package nvdla

import chisel3._
import chisel3.experimental._
import chisel3.util._


//this module is to active dat and wt

// flow valid
// class csc2cmac_data_if(implicit val conf: nvdlaConfig)  extends Bundle{
//     val mask = Output(Vec(conf.NVDLA_MAC_ATOMIC_C_SIZE, Bool()))
//     val data = Output(Vec(conf.NVDLA_MAC_ATOMIC_C_SIZE, UInt(conf.NVDLA_BPE.W)))
// //pd
// //   field batch_index 5
// //   field stripe_st 1
// //   field stripe_end 1
// //   field channel_end 1
// //   field layer_end 1
//     val pd = Output(UInt(9.W))
// }

// class csc2cmac_wt_if(implicit val conf: nvdlaConfig) extends Bundle{
//     val sel = Output(Vec(conf.NVDLA_MAC_ATOMIC_K_SIZE_DIV2, Bool()))
//     val mask = Output(Vec(conf.NVDLA_MAC_ATOMIC_C_SIZE, Bool()))
//     val data = Output(Vec(conf.NVDLA_MAC_ATOMIC_C_SIZE, UInt(conf.NVDLA_BPE.W)))


// }

// class cmac_core_actv(implicit val conf: nvdlaConfig) extends Bundle{
//     val nz = Output(Bool())
//     val data = Output(UInt(conf.CMAC_BPE.W))
// }

@chiselName
class NV_NVDLA_CMAC_CORE_active_gate(implicit val conf: nvdlaConfig) extends Module {
    val io = IO(new Bundle {
        //clock
        val nvdla_core_clk = Input(Clock())
        val nvdla_core_rstn = Input(Bool())

        // input_dat
        val in_dat_data = Input(Vec(conf.NVDLA_MAC_ATOMIC_C_SIZE, UInt(conf.NVDLA_BPE.W)))
        val in_dat_mask = Input(UInt(conf.NVDLA_MAC_ATOMIC_C_SIZE.W))
        val in_dat_pvld = Input(Bool())
        //val in_dat = Flipped(ValidIO(new csc2cmac_data_if))  /* data valid */
        val in_dat_stripe_st = Input(Bool())
        val in_dat_stripe_end = Input(Bool())

        //odif
        // input_wt
        val in_wt_pvld = Input(Bool())
        val in_wt_data = Input(Vec(conf.CMAC_ATOMC, UInt(conf.NVDLA_BPE.W)))
        val in_wt_mask = Input(UInt(conf.NVDLA_MAC_ATOMIC_C_SIZE.W))
        val in_wt_sel = Input(UInt(conf.CMAC_ATOMK_HALF.W))
        
        //Flipped(ValidIO(new csc2cmac_wt_if))  /* data valid */

        // atomk, atomc, data&wt
        val dat_actv_data = Output(Vec(conf.CMAC_ATOMK_HALF, UInt((conf.NVDLA_MAC_ATOMIC_C_SIZE*conf.NVDLA_BPE).W)))
        val dat_actv_nz = Output(Vec(conf.CMAC_ATOMK_HALF, UInt(conf.NVDLA_MAC_ATOMIC_C_SIZE.W)))
        val dat_actv_pvld = Output(Vec(conf.CMAC_ATOMK_HALF, UInt(conf.NVDLA_MAC_ATOMIC_C_SIZE.W)))

        val wt_actv_data = Output(Vec(conf.CMAC_ATOMK_HALF, UInt((conf.NVDLA_MAC_ATOMIC_C_SIZE*conf.NVDLA_BPE).W)))
        val wt_actv_nz = Output(Vec(conf.CMAC_ATOMK_HALF, UInt(conf.NVDLA_MAC_ATOMIC_C_SIZE.W)))
        val wt_actv_pvld = Output(Vec(conf.CMAC_ATOMK_HALF, UInt(conf.NVDLA_MAC_ATOMIC_C_SIZE.W))) 
    })

//     
//          ┌─┐       ┌─┐
//       ┌──┘ ┴───────┘ ┴──┐
//       │                 │
//       │       ───       │
//       │  ─┬┘       └┬─  │
//       │                 │
//       │       ─┴─       │
//       │                 │
//       └───┐         ┌───┘
//           │         │
//           │         │
//           │         │
//           │         └──────────────┐
//           │                        │        wt : in --> pre --> sd --> actv 
//           │                        ├─┐      dat: in --> pre ---------> actv
//           │                        ┌─┘    
//           │                        │
//           └─┐  ┐  ┌───────┬──┐  ┌──┘         
//             │ ─┤ ─┤       │ ─┤ ─┤         
//             └──┴──┘       └──┴──┘ 
withClockAndReset(io.nvdla_core_clk, !io.nvdla_core_rstn){
//==========================================================
// wt&dat:in --> pre
//==========================================================   
    // wt
    val wt_pre_nz = RegInit(VecInit(Seq.fill(conf.CMAC_ATOMC)(false.B)))
    val wt_pre_data = Reg(Vec(conf.CMAC_ATOMC, UInt(conf.CMAC_BPE.W)))
    val wt_pre_sel = RegInit(VecInit(Seq.fill(conf.CMAC_ATOMK_HALF)(false.B)))

    when(io.in_wt_pvld){
        for(i <- 0 to conf.CMAC_ATOMC-1){
            wt_pre_nz(i) := io.in_wt_mask(i)
        }
        for(i <- 0 to conf.CMAC_ATOMC-1){
            when(io.in_wt_mask(i)){
                wt_pre_data(i) := io.in_wt_data(i)
            }
        }   
    } 
    for(i <- 0 to conf.CMAC_ATOMK_HALF-1){
        wt_pre_sel(i) := io.in_wt_sel(i) & io.in_wt_pvld
    }

    //dat
    val dat_pre_nz = RegInit(VecInit(Seq.fill(conf.CMAC_ATOMC)(false.B)))
    val dat_pre_data = Reg(Vec(conf.CMAC_ATOMC, UInt(conf.CMAC_BPE.W)))
    val dat_pre_pvld = RegInit(false.B) 
    val dat_pre_stripe_st = RegInit(false.B) 
    val dat_pre_stripe_end = RegInit(false.B) 

    dat_pre_pvld := io.in_dat_pvld
    when(io.in_dat_pvld){
        for(i <- 0 to conf.CMAC_ATOMC-1){
            dat_pre_nz(i) := io.in_dat_mask(i)
        }
        for(i <- 0 to conf.CMAC_ATOMC-1){
            when(io.in_dat_mask(i)){
                dat_pre_data(i):=io.in_dat_data(i)
            }
        } 
    }

    dat_pre_stripe_st := io.in_dat_stripe_st & io.in_dat_pvld//strip start
    dat_pre_stripe_end := io.in_dat_stripe_end & io.in_dat_pvld //strip end

//==========================================================
// wt:pre --> sd  this is a push and pop, when strip end, push weight, when strip start, pop weight
//==========================================================  
    //push input weight into shadow

    val wt_sd_pvld = RegInit(VecInit(Seq.fill(conf.CMAC_ATOMK_HALF)(false.B)))
    val wt_sd_nz = RegInit(VecInit(Seq.fill(conf.CMAC_ATOMK_HALF)(VecInit(Seq.fill(conf.CMAC_ATOMC)(false.B)))))
    val wt_sd_data = Reg(Vec(conf.CMAC_ATOMK_HALF, Vec(conf.CMAC_ATOMC, UInt(conf.CMAC_BPE.W))))
    val dat_actv_stripe_end = RegInit(false.B)
        
    for(i <- 0 to conf.CMAC_ATOMK_HALF-1){
        wt_sd_pvld(i) := Mux(wt_pre_sel(i), true.B, Mux(dat_pre_stripe_st, false.B, wt_sd_pvld(i)))
        when(wt_pre_sel(i)){
            wt_sd_nz(i) := wt_pre_nz
            for (j <- 0 to conf.CMAC_ATOMC-1){
                when(wt_pre_nz(j)){
                    wt_sd_data(i)(j) := wt_pre_data(j)
                }
            }
        }
    } 

    dat_actv_stripe_end := dat_pre_stripe_end

//==========================================================
// wt:sd --> actv  this is a push and pop, when strip end, push weight, when strip start, pop weight
//==========================================================  
    //pop weight from shadow when new stripe begin.

    val wt_actv_vld = RegInit(VecInit(Seq.fill(conf.CMAC_ATOMK_HALF)(false.B)))
    val wt_actv_pvld_reg = RegInit(VecInit(Seq.fill(conf.CMAC_ATOMK_HALF)(VecInit(Seq.fill(conf.CMAC_ATOMC)(false.B)))))
    val wt_actv_pvld_w = Wire(Vec(conf.CMAC_ATOMK_HALF,Bool()))
    val wt_actv_nz_reg = RegInit(VecInit(Seq.fill(conf.CMAC_ATOMK_HALF)(VecInit(Seq.fill(conf.CMAC_ATOMC)(false.B)))))
    val wt_actv_data_reg = Reg(Vec(conf.CMAC_ATOMK_HALF, Vec(conf.CMAC_ATOMC, UInt(conf.CMAC_BPE.W))))
        
    for(i <- 0 to conf.CMAC_ATOMK_HALF-1){
        wt_actv_pvld_w(i) := Mux(dat_pre_stripe_st, wt_sd_pvld(i), Mux(dat_actv_stripe_end, false.B, wt_actv_vld(i)))
        wt_actv_vld(i) := wt_actv_pvld_w(i)
        for (j <- 0 to conf.CMAC_ATOMC-1){
            wt_actv_pvld_reg(i)(j) := wt_actv_pvld_w(i)
            when(dat_pre_stripe_st & wt_actv_pvld_w(i)){
                wt_actv_nz_reg(i)(j) := wt_sd_nz(i)(j)
                wt_actv_data_reg(i)(j) := Fill(conf.CMAC_BPE, wt_sd_nz(i)(j)) & wt_sd_data(i)(j)
            }
        }
    } 

//==========================================================
// dat:pre --> actv
//==========================================================  
    val dat_actv_pvld_reg = RegInit(VecInit(Seq.fill(conf.CMAC_ATOMK_HALF)(VecInit(Seq.fill(conf.CMAC_ATOMC)(false.B)))))
    val dat_actv_nz_reg = RegInit(VecInit(Seq.fill(conf.CMAC_ATOMK_HALF)(VecInit(Seq.fill(conf.CMAC_ATOMC)(false.B)))))
    val dat_actv_data_reg = Reg(Vec(conf.CMAC_ATOMK_HALF, Vec(conf.CMAC_ATOMC, UInt(conf.CMAC_BPE.W))))

    for(i <- 0 to conf.CMAC_ATOMK_HALF-1){
        for (j <- 0 to conf.CMAC_ATOMC-1){
            dat_actv_pvld_reg(i)(j) := dat_pre_pvld
            when(dat_pre_pvld){
                dat_actv_nz_reg(i)(j) := dat_pre_nz(j)   
                when(dat_pre_nz(j)){
                    dat_actv_data_reg(i)(j) := dat_pre_data(j)    
                }
            }
        }
    }

//assign output  
    for(i <- 0 to conf.CMAC_ATOMK_HALF-1){
        io.dat_actv_pvld(i) := dat_actv_pvld_reg(i).asUInt
        io.dat_actv_nz(i) := dat_actv_nz_reg(i).asUInt
        io.dat_actv_data(i) := dat_actv_data_reg(i).asUInt

        io.wt_actv_pvld(i) := wt_actv_pvld_reg(i).asUInt
        io.wt_actv_nz(i) := wt_actv_nz_reg(i).asUInt
        io.wt_actv_data(i) := wt_actv_data_reg(i).asUInt
    }


}}



object NV_NVDLA_CMAC_CORE_active_gateDriver extends App {
  implicit val conf: nvdlaConfig = new nvdlaConfig
  chisel3.Driver.execute(args, () => new NV_NVDLA_CMAC_CORE_active_gate)
}