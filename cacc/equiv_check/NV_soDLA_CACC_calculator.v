module NV_soDLA_CACC_CALC_int8_gate( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn, // @[:@6.4]
  input  [4:0]  cfg_truncate, // @[:@6.4]
  input  [21:0] in_data, // @[:@6.4]
  input  [33:0] in_op, // @[:@6.4]
  input         in_op_valid, // @[:@6.4]
  input         in_sel, // @[:@6.4]
  input         in_valid, // @[:@6.4]
  output [31:0] out_final_data, // @[:@6.4]
  output        out_final_sat, // @[:@6.4]
  output        out_final_valid, // @[:@6.4]
  output [33:0] out_partial_data, // @[:@6.4]
  output        out_partial_valid // @[:@6.4]
);
  wire  _T_32; // @[NV_soDLA_CACC_CALC_int8_gate.scala 53:38:@8.4]
  reg  i_sat_vld; // @[NV_soDLA_CACC_CALC_int8_gate.scala 57:28:@9.4]
  reg [31:0] _RAND_0;
  reg  i_sat_sel; // @[NV_soDLA_CACC_CALC_int8_gate.scala 58:29:@10.4]
  reg [31:0] _RAND_1;
  reg [34:0] i_sum_pd; // @[NV_soDLA_CACC_CALC_int8_gate.scala 59:23:@11.4]
  reg [63:0] _RAND_2;
  wire [21:0] _T_38; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:33:@15.6]
  wire [33:0] _T_40; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:46:@16.6]
  wire [33:0] _T_41; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:89:@17.6]
  wire [33:0] _GEN_5; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:40:@18.6]
  wire [34:0] _T_42; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:40:@18.6]
  wire [34:0] _T_43; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:97:@19.6]
  wire  _GEN_0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 62:22:@13.4]
  wire  i_sum_sign; // @[NV_soDLA_CACC_CALC_int8_gate.scala 70:30:@22.4]
  wire  i_sum_msb; // @[NV_soDLA_CACC_CALC_int8_gate.scala 71:29:@23.4]
  wire  _T_46; // @[NV_soDLA_CACC_CALC_int8_gate.scala 75:20:@26.4]
  wire  _T_47; // @[NV_soDLA_CACC_CALC_int8_gate.scala 76:32:@28.6]
  wire [32:0] _T_51; // @[Bitwise.scala 72:12:@30.6]
  wire [32:0] _T_52; // @[NV_soDLA_CACC_CALC_int8_gate.scala 79:31:@34.6]
  wire [32:0] i_sat_bits; // @[NV_soDLA_CACC_CALC_int8_gate.scala 75:31:@27.4]
  wire [33:0] i_sat_pd; // @[Cat.scala 30:58:@37.4]
  wire [33:0] i_pre_sft_pd; // @[NV_soDLA_CACC_CALC_int8_gate.scala 89:27:@41.4]
  wire [49:0] _T_61; // @[Cat.scala 30:58:@42.4]
  wire [49:0] _T_62; // @[NV_soDLA_CACC_CALC_int8_gate.scala 90:66:@43.4]
  wire [49:0] i_pre_sft_pd_pack; // @[NV_soDLA_CACC_CALC_int8_gate.scala 90:73:@44.4]
  wire [49:0] _T_63; // @[Cat.scala 30:58:@45.4]
  wire [33:0] i_sft_pd; // @[NV_soDLA_CACC_CALC_int8_gate.scala 91:42:@46.4]
  wire  i_guide; // @[NV_soDLA_CACC_CALC_int8_gate.scala 92:41:@48.4]
  wire [14:0] i_stick; // @[NV_soDLA_CACC_CALC_int8_gate.scala 93:41:@50.4]
  wire [1:0] _T_66; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:51:@51.4]
  wire [1:0] _T_67; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:60:@52.4]
  wire  _T_69; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:60:@53.4]
  wire  _T_70; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:41:@54.4]
  wire  _T_71; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:38:@55.4]
  wire  _T_75; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:59:@58.4]
  wire  _T_76; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:39:@59.4]
  wire  _T_77; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:67:@60.4]
  wire [30:0] _T_79; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:53:@62.4]
  wire  _T_92; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:27:@72.4]
  wire  _T_95; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:61:@74.4]
  wire  _T_96; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:51:@75.4]
  wire  i_point5; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:37:@76.4]
  wire [31:0] _T_80; // @[Cat.scala 30:58:@63.4]
  wire [31:0] _T_81; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:71:@64.4]
  wire  _T_83; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:71:@65.4]
  wire  _T_84; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:39:@66.4]
  wire  i_sft_need_sat; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:65:@67.4]
  wire [31:0] i_sft_max; // @[NV_soDLA_CACC_CALC_int8_gate.scala 98:24:@71.4]
  wire [31:0] _T_98; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:28:@78.4]
  wire [31:0] _GEN_6; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@79.4]
  wire [32:0] _T_99; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@79.4]
  wire [31:0] i_pos_pd; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@80.4]
  wire [31:0] i_final_result; // @[NV_soDLA_CACC_CALC_int8_gate.scala 104:29:@81.4]
  wire  _T_100; // @[NV_soDLA_CACC_CALC_int8_gate.scala 106:37:@82.4]
  wire  i_partial_vld; // @[NV_soDLA_CACC_CALC_int8_gate.scala 106:35:@83.4]
  wire  i_final_vld; // @[NV_soDLA_CACC_CALC_int8_gate.scala 107:32:@84.4]
  reg  _T_103; // @[NV_soDLA_CACC_CALC_int8_gate.scala 109:36:@85.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_105; // @[Reg.scala 11:16:@88.4]
  reg [63:0] _RAND_4;
  reg  _T_108; // @[NV_soDLA_CACC_CALC_int8_gate.scala 111:34:@93.4]
  reg [31:0] _RAND_5;
  wire  _T_109; // @[NV_soDLA_CACC_CALC_int8_gate.scala 112:45:@96.4]
  reg  _T_112; // @[NV_soDLA_CACC_CALC_int8_gate.scala 112:32:@97.4]
  reg [31:0] _RAND_6;
  reg [31:0] _T_114; // @[Reg.scala 11:16:@100.4]
  reg [31:0] _RAND_7;
  assign _T_32 = nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 53:38:@8.4]
  assign _T_38 = $signed(in_data); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:33:@15.6]
  assign _T_40 = in_op_valid ? in_op : 34'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:46:@16.6]
  assign _T_41 = $signed(_T_40); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:89:@17.6]
  assign _GEN_5 = {{12{_T_38[21]}},_T_38}; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:40:@18.6]
  assign _T_42 = $signed(_GEN_5) + $signed(_T_41); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:40:@18.6]
  assign _T_43 = $unsigned(_T_42); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:97:@19.6]
  assign _GEN_0 = in_valid ? in_sel : i_sat_sel; // @[NV_soDLA_CACC_CALC_int8_gate.scala 62:22:@13.4]
  assign i_sum_sign = i_sum_pd[34]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 70:30:@22.4]
  assign i_sum_msb = i_sum_pd[33]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 71:29:@23.4]
  assign _T_46 = i_sum_sign ^ i_sum_msb; // @[NV_soDLA_CACC_CALC_int8_gate.scala 75:20:@26.4]
  assign _T_47 = ~ i_sum_sign; // @[NV_soDLA_CACC_CALC_int8_gate.scala 76:32:@28.6]
  assign _T_51 = _T_47 ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12:@30.6]
  assign _T_52 = i_sum_pd[32:0]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 79:31:@34.6]
  assign i_sat_bits = _T_46 ? _T_51 : _T_52; // @[NV_soDLA_CACC_CALC_int8_gate.scala 75:31:@27.4]
  assign i_sat_pd = {i_sum_sign,i_sat_bits}; // @[Cat.scala 30:58:@37.4]
  assign i_pre_sft_pd = i_sat_sel ? i_sat_pd : 34'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 89:27:@41.4]
  assign _T_61 = {i_pre_sft_pd,16'h0}; // @[Cat.scala 30:58:@42.4]
  assign _T_62 = $signed(_T_61); // @[NV_soDLA_CACC_CALC_int8_gate.scala 90:66:@43.4]
  assign i_pre_sft_pd_pack = $signed(_T_62) >>> cfg_truncate; // @[NV_soDLA_CACC_CALC_int8_gate.scala 90:73:@44.4]
  assign _T_63 = $unsigned(i_pre_sft_pd_pack); // @[Cat.scala 30:58:@45.4]
  assign i_sft_pd = _T_63[49:16]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 91:42:@46.4]
  assign i_guide = _T_63[15]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 92:41:@48.4]
  assign i_stick = _T_63[14:0]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 93:41:@50.4]
  assign _T_66 = i_sft_pd[32:31]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:51:@51.4]
  assign _T_67 = ~ _T_66; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:60:@52.4]
  assign _T_69 = _T_67 == 2'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:60:@53.4]
  assign _T_70 = ~ _T_69; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:41:@54.4]
  assign _T_71 = i_sum_sign & _T_70; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:38:@55.4]
  assign _T_75 = _T_66 != 2'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:59:@58.4]
  assign _T_76 = _T_47 & _T_75; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:39:@59.4]
  assign _T_77 = _T_71 | _T_76; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:67:@60.4]
  assign _T_79 = i_sft_pd[30:0]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:53:@62.4]
  assign _T_92 = i_sat_sel & i_guide; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:27:@72.4]
  assign _T_95 = i_stick != 15'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:61:@74.4]
  assign _T_96 = _T_47 | _T_95; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:51:@75.4]
  assign i_point5 = _T_92 & _T_96; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:37:@76.4]
  assign _T_80 = {_T_79,i_point5}; // @[Cat.scala 30:58:@63.4]
  assign _T_81 = ~ _T_80; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:71:@64.4]
  assign _T_83 = _T_81 == 32'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:71:@65.4]
  assign _T_84 = _T_47 & _T_83; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:39:@66.4]
  assign i_sft_need_sat = _T_77 | _T_84; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:65:@67.4]
  assign i_sft_max = i_sum_sign ? 32'h80000000 : 32'h7fffffff; // @[NV_soDLA_CACC_CALC_int8_gate.scala 98:24:@71.4]
  assign _T_98 = i_sft_pd[31:0]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:28:@78.4]
  assign _GEN_6 = {{31'd0}, i_point5}; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@79.4]
  assign _T_99 = _T_98 + _GEN_6; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@79.4]
  assign i_pos_pd = _T_98 + _GEN_6; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@80.4]
  assign i_final_result = i_sft_need_sat ? i_sft_max : i_pos_pd; // @[NV_soDLA_CACC_CALC_int8_gate.scala 104:29:@81.4]
  assign _T_100 = ~ i_sat_sel; // @[NV_soDLA_CACC_CALC_int8_gate.scala 106:37:@82.4]
  assign i_partial_vld = i_sat_vld & _T_100; // @[NV_soDLA_CACC_CALC_int8_gate.scala 106:35:@83.4]
  assign i_final_vld = i_sat_vld & i_sat_sel; // @[NV_soDLA_CACC_CALC_int8_gate.scala 107:32:@84.4]
  assign _T_109 = i_final_vld & i_sft_need_sat; // @[NV_soDLA_CACC_CALC_int8_gate.scala 112:45:@96.4]
  assign out_final_data = _T_114; // @[NV_soDLA_CACC_CALC_int8_gate.scala 113:23:@104.4]
  assign out_final_sat = _T_112; // @[NV_soDLA_CACC_CALC_int8_gate.scala 112:22:@99.4]
  assign out_final_valid = _T_108; // @[NV_soDLA_CACC_CALC_int8_gate.scala 111:24:@95.4]
  assign out_partial_data = _T_105; // @[NV_soDLA_CACC_CALC_int8_gate.scala 110:25:@92.4]
  assign out_partial_valid = _T_103; // @[NV_soDLA_CACC_CALC_int8_gate.scala 109:26:@87.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  i_sat_vld = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  i_sat_sel = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  i_sum_pd = _RAND_2[34:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_103 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_105 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_108 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_112 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_114 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (_T_32) begin
      i_sat_vld <= 1'h0;
    end else begin
      i_sat_vld <= in_valid;
    end
    if (_T_32) begin
      i_sat_sel <= 1'h0;
    end else begin
      if (in_valid) begin
        i_sat_sel <= in_sel;
      end
    end
    if (in_valid) begin
      i_sum_pd <= _T_43;
    end
    if (_T_32) begin
      _T_103 <= 1'h0;
    end else begin
      _T_103 <= i_partial_vld;
    end
    if (i_partial_vld) begin
      _T_105 <= i_sat_pd;
    end
    if (_T_32) begin
      _T_108 <= 1'h0;
    end else begin
      _T_108 <= i_final_vld;
    end
    if (_T_32) begin
      _T_112 <= 1'h0;
    end else begin
      _T_112 <= _T_109;
    end
    if (i_final_vld) begin
      if (i_sft_need_sat) begin
        if (i_sum_sign) begin
          _T_114 <= 32'h80000000;
        end else begin
          _T_114 <= 32'h7fffffff;
        end
      end else begin
        _T_114 <= i_pos_pd;
      end
    end
  end
endmodule


module NV_soDLA_CACC_calculator_gate( // @[:@3299.2]
  input           nvdla_core_clk, // @[:@3302.4]
  input           nvdla_cell_clk, // @[:@3302.4]
  input           nvdla_core_rstn, // @[:@3302.4]
  input  [1087:0] abuf_rd_data, // @[:@3302.4]
  output          abuf_wr_en, // @[:@3302.4]
  output [5:0]    abuf_wr_addr, // @[:@3302.4]
  output [1087:0] abuf_wr_data, // @[:@3302.4]
  output          dlv_valid, // @[:@3302.4]
  output          dlv_mask, // @[:@3302.4]
  output [1023:0] dlv_data, // @[:@3302.4]
  output [1:0]    dlv_pd, // @[:@3302.4]
  input           accu_ctrl_valid, // @[:@3302.4]
  input  [12:0]   accu_ctrl_pd, // @[:@3302.4]
  input           accu_ctrl_ram_valid, // @[:@3302.4]
  input  [4:0]    cfg_truncate, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_0, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_1, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_2, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_3, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_4, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_5, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_6, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_7, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_8, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_9, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_10, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_11, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_12, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_13, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_14, // @[:@3302.4]
  input  [21:0]   mac_a2accu_data_15, // @[:@3302.4]
  input  [15:0]   mac_a2accu_mask, // @[:@3302.4]
  input           mac_a2accu_pvld, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_0, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_1, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_2, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_3, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_4, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_5, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_6, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_7, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_8, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_9, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_10, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_11, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_12, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_13, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_14, // @[:@3302.4]
  input  [21:0]   mac_b2accu_data_15, // @[:@3302.4]
  input  [15:0]   mac_b2accu_mask, // @[:@3302.4]
  input           mac_b2accu_pvld, // @[:@3302.4]
  output [31:0]   dp2reg_sat_count // @[:@3302.4]
);
  wire  NV_soDLA_CACC_CALC_int8_gate_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_1_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_1_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_1_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_1_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_1_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_2_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_2_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_2_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_2_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_2_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_3_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_3_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_3_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_3_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_3_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_4_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_4_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_4_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_4_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_4_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_5_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_5_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_5_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_5_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_5_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_6_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_6_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_6_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_6_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_6_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_7_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_7_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_7_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_7_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_7_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_8_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_8_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_8_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_8_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_8_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_9_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_9_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_9_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_9_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_9_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_10_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_10_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_10_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_10_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_10_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_11_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_11_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_11_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_11_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_11_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_12_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_12_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_12_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_12_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_12_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_13_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_13_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_13_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_13_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_13_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_14_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_14_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_14_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_14_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_14_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_15_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_15_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_15_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_15_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_15_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_16_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_16_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_16_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_16_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_16_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_17_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_17_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_17_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_17_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_17_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_18_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_18_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_18_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_18_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_18_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_19_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_19_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_19_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_19_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_19_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_20_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_20_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_20_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_20_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_20_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_21_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_21_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_21_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_21_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_21_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_22_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_22_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_22_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_22_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_22_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_23_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_23_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_23_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_23_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_23_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_24_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_24_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_24_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_24_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_24_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_25_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_25_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_25_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_25_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_25_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_26_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_26_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_26_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_26_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_26_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_27_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_27_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_27_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_27_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_27_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_28_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_28_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_28_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_28_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_28_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_29_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_29_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_29_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_29_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_29_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_30_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_30_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_30_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_30_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_30_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_31_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_31_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_31_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_31_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_31_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  _T_130; // @[NV_soDLA_CACC_calculator_gate.scala 70:38:@3304.4]
  reg [12:0] accu_ctrl_pd_d1; // @[Reg.scala 19:20:@3370.4]
  reg [31:0] _RAND_0;
  wire [12:0] _GEN_0; // @[Reg.scala 20:19:@3371.4]
  reg  _T_204; // @[Reg.scala 11:16:@3375.4]
  reg [31:0] _RAND_1;
  reg  _T_206; // @[Reg.scala 11:16:@3379.4]
  reg [31:0] _RAND_2;
  reg  calc_valid; // @[Reg.scala 11:16:@3383.4]
  reg [31:0] _RAND_3;
  wire [5:0] calc_addr; // @[NV_soDLA_CACC_calculator_gate.scala 81:36:@3387.4]
  wire  calc_stripe_end; // @[NV_soDLA_CACC_calculator_gate.scala 83:42:@3389.4]
  wire  calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 84:43:@3390.4]
  wire  calc_layer_end; // @[NV_soDLA_CACC_calculator_gate.scala 85:41:@3391.4]
  wire  calc_in_mask_0; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3397.4]
  wire  calc_in_mask_16; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3399.4]
  wire  calc_in_mask_1; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3403.4]
  wire  calc_in_mask_17; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3405.4]
  wire  calc_in_mask_2; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3409.4]
  wire  calc_in_mask_18; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3411.4]
  wire  calc_in_mask_3; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3415.4]
  wire  calc_in_mask_19; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3417.4]
  wire  calc_in_mask_4; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3421.4]
  wire  calc_in_mask_20; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3423.4]
  wire  calc_in_mask_5; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3427.4]
  wire  calc_in_mask_21; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3429.4]
  wire  calc_in_mask_6; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3433.4]
  wire  calc_in_mask_22; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3435.4]
  wire  calc_in_mask_7; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3439.4]
  wire  calc_in_mask_23; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3441.4]
  wire  calc_in_mask_8; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3445.4]
  wire  calc_in_mask_24; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3447.4]
  wire  calc_in_mask_9; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3451.4]
  wire  calc_in_mask_25; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3453.4]
  wire  calc_in_mask_10; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3457.4]
  wire  calc_in_mask_26; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3459.4]
  wire  calc_in_mask_11; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3463.4]
  wire  calc_in_mask_27; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3465.4]
  wire  calc_in_mask_12; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3469.4]
  wire  calc_in_mask_28; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3471.4]
  wire  calc_in_mask_13; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3475.4]
  wire  calc_in_mask_29; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3477.4]
  wire  calc_in_mask_14; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3481.4]
  wire  calc_in_mask_30; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3483.4]
  wire  calc_in_mask_15; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3487.4]
  wire  calc_in_mask_31; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3489.4]
  wire  calc_dlv_valid; // @[NV_soDLA_CACC_calculator_gate.scala 99:37:@3589.4]
  wire  _T_420; // @[NV_soDLA_CACC_calculator_gate.scala 100:36:@3590.4]
  wire  calc_wr_en; // @[NV_soDLA_CACC_calculator_gate.scala 100:33:@3591.4]
  reg  _T_610; // @[NV_soDLA_CACC_calculator_gate.scala 134:72:@4110.4]
  reg [31:0] _RAND_4;
  reg  _T_617; // @[NV_soDLA_CACC_calculator_gate.scala 136:72:@4113.4]
  reg [31:0] _RAND_5;
  reg  calc_wr_en_out; // @[NV_soDLA_CACC_calculator_gate.scala 136:72:@4114.4]
  reg [31:0] _RAND_6;
  reg [5:0] _T_624; // @[NV_soDLA_CACC_calculator_gate.scala 138:71:@4116.4]
  reg [31:0] _RAND_7;
  reg [5:0] calc_addr_out; // @[NV_soDLA_CACC_calculator_gate.scala 138:71:@4117.4]
  reg [31:0] _RAND_8;
  wire [5:0] _GEN_4; // @[NV_soDLA_CACC_calculator_gate.scala 147:30:@4123.4]
  wire [5:0] _GEN_5; // @[NV_soDLA_CACC_calculator_gate.scala 147:30:@4128.4]
  reg  _T_631; // @[NV_soDLA_CACC_calculator_gate.scala 157:74:@4132.4]
  reg [31:0] _RAND_9;
  reg  calc_dlv_valid_out; // @[NV_soDLA_CACC_calculator_gate.scala 157:74:@4133.4]
  reg [31:0] _RAND_10;
  reg  _T_638; // @[NV_soDLA_CACC_calculator_gate.scala 159:75:@4135.4]
  reg [31:0] _RAND_11;
  reg  calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 159:75:@4136.4]
  reg [31:0] _RAND_12;
  reg  _T_645; // @[NV_soDLA_CACC_calculator_gate.scala 161:74:@4138.4]
  reg [31:0] _RAND_13;
  reg  calc_layer_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 161:74:@4139.4]
  reg [31:0] _RAND_14;
  wire  _GEN_6; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4144.4]
  wire  _GEN_7; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4144.4]
  wire  _GEN_8; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4149.4]
  wire  _GEN_9; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4149.4]
  wire  calc_pout_vld_0; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3705.4]
  wire [33:0] _T_688; // @[Bitwise.scala 72:12:@4155.4]
  wire [33:0] calc_pout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3704.4]
  wire [33:0] calc_pout_0; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4156.4]
  wire  calc_pout_vld_1; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3718.4]
  wire [33:0] _T_693; // @[Bitwise.scala 72:12:@4159.4]
  wire [33:0] calc_pout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3717.4]
  wire [33:0] calc_pout_1; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4160.4]
  wire  calc_pout_vld_2; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3731.4]
  wire [33:0] _T_698; // @[Bitwise.scala 72:12:@4163.4]
  wire [33:0] calc_pout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3730.4]
  wire [33:0] calc_pout_2; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4164.4]
  wire  calc_pout_vld_3; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3744.4]
  wire [33:0] _T_703; // @[Bitwise.scala 72:12:@4167.4]
  wire [33:0] calc_pout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3743.4]
  wire [33:0] calc_pout_3; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4168.4]
  wire  calc_pout_vld_4; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3757.4]
  wire [33:0] _T_708; // @[Bitwise.scala 72:12:@4171.4]
  wire [33:0] calc_pout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3756.4]
  wire [33:0] calc_pout_4; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4172.4]
  wire  calc_pout_vld_5; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3770.4]
  wire [33:0] _T_713; // @[Bitwise.scala 72:12:@4175.4]
  wire [33:0] calc_pout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3769.4]
  wire [33:0] calc_pout_5; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4176.4]
  wire  calc_pout_vld_6; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3783.4]
  wire [33:0] _T_718; // @[Bitwise.scala 72:12:@4179.4]
  wire [33:0] calc_pout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3782.4]
  wire [33:0] calc_pout_6; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4180.4]
  wire  calc_pout_vld_7; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3796.4]
  wire [33:0] _T_723; // @[Bitwise.scala 72:12:@4183.4]
  wire [33:0] calc_pout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3795.4]
  wire [33:0] calc_pout_7; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4184.4]
  wire  calc_pout_vld_8; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3809.4]
  wire [33:0] _T_728; // @[Bitwise.scala 72:12:@4187.4]
  wire [33:0] calc_pout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3808.4]
  wire [33:0] calc_pout_8; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4188.4]
  wire  calc_pout_vld_9; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3822.4]
  wire [33:0] _T_733; // @[Bitwise.scala 72:12:@4191.4]
  wire [33:0] calc_pout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3821.4]
  wire [33:0] calc_pout_9; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4192.4]
  wire  calc_pout_vld_10; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3835.4]
  wire [33:0] _T_738; // @[Bitwise.scala 72:12:@4195.4]
  wire [33:0] calc_pout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3834.4]
  wire [33:0] calc_pout_10; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4196.4]
  wire  calc_pout_vld_11; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3848.4]
  wire [33:0] _T_743; // @[Bitwise.scala 72:12:@4199.4]
  wire [33:0] calc_pout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3847.4]
  wire [33:0] calc_pout_11; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4200.4]
  wire  calc_pout_vld_12; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3861.4]
  wire [33:0] _T_748; // @[Bitwise.scala 72:12:@4203.4]
  wire [33:0] calc_pout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3860.4]
  wire [33:0] calc_pout_12; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4204.4]
  wire  calc_pout_vld_13; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3874.4]
  wire [33:0] _T_753; // @[Bitwise.scala 72:12:@4207.4]
  wire [33:0] calc_pout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3873.4]
  wire [33:0] calc_pout_13; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4208.4]
  wire  calc_pout_vld_14; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3887.4]
  wire [33:0] _T_758; // @[Bitwise.scala 72:12:@4211.4]
  wire [33:0] calc_pout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3886.4]
  wire [33:0] calc_pout_14; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4212.4]
  wire  calc_pout_vld_15; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3900.4]
  wire [33:0] _T_763; // @[Bitwise.scala 72:12:@4215.4]
  wire [33:0] calc_pout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3899.4]
  wire [33:0] calc_pout_15; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4216.4]
  wire  calc_pout_vld_16; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3913.4]
  wire [33:0] _T_768; // @[Bitwise.scala 72:12:@4219.4]
  wire [33:0] calc_pout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3912.4]
  wire [33:0] calc_pout_16; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4220.4]
  wire  calc_pout_vld_17; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3926.4]
  wire [33:0] _T_773; // @[Bitwise.scala 72:12:@4223.4]
  wire [33:0] calc_pout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3925.4]
  wire [33:0] calc_pout_17; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4224.4]
  wire  calc_pout_vld_18; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3939.4]
  wire [33:0] _T_778; // @[Bitwise.scala 72:12:@4227.4]
  wire [33:0] calc_pout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3938.4]
  wire [33:0] calc_pout_18; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4228.4]
  wire  calc_pout_vld_19; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3952.4]
  wire [33:0] _T_783; // @[Bitwise.scala 72:12:@4231.4]
  wire [33:0] calc_pout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3951.4]
  wire [33:0] calc_pout_19; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4232.4]
  wire  calc_pout_vld_20; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3965.4]
  wire [33:0] _T_788; // @[Bitwise.scala 72:12:@4235.4]
  wire [33:0] calc_pout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3964.4]
  wire [33:0] calc_pout_20; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4236.4]
  wire  calc_pout_vld_21; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3978.4]
  wire [33:0] _T_793; // @[Bitwise.scala 72:12:@4239.4]
  wire [33:0] calc_pout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3977.4]
  wire [33:0] calc_pout_21; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4240.4]
  wire  calc_pout_vld_22; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3991.4]
  wire [33:0] _T_798; // @[Bitwise.scala 72:12:@4243.4]
  wire [33:0] calc_pout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3990.4]
  wire [33:0] calc_pout_22; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4244.4]
  wire  calc_pout_vld_23; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4004.4]
  wire [33:0] _T_803; // @[Bitwise.scala 72:12:@4247.4]
  wire [33:0] calc_pout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4003.4]
  wire [33:0] calc_pout_23; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4248.4]
  wire  calc_pout_vld_24; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4017.4]
  wire [33:0] _T_808; // @[Bitwise.scala 72:12:@4251.4]
  wire [33:0] calc_pout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4016.4]
  wire [33:0] calc_pout_24; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4252.4]
  wire  calc_pout_vld_25; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4030.4]
  wire [33:0] _T_813; // @[Bitwise.scala 72:12:@4255.4]
  wire [33:0] calc_pout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4029.4]
  wire [33:0] calc_pout_25; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4256.4]
  wire  calc_pout_vld_26; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4043.4]
  wire [33:0] _T_818; // @[Bitwise.scala 72:12:@4259.4]
  wire [33:0] calc_pout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4042.4]
  wire [33:0] calc_pout_26; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4260.4]
  wire  calc_pout_vld_27; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4056.4]
  wire [33:0] _T_823; // @[Bitwise.scala 72:12:@4263.4]
  wire [33:0] calc_pout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4055.4]
  wire [33:0] calc_pout_27; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4264.4]
  wire  calc_pout_vld_28; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4069.4]
  wire [33:0] _T_828; // @[Bitwise.scala 72:12:@4267.4]
  wire [33:0] calc_pout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4068.4]
  wire [33:0] calc_pout_28; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4268.4]
  wire  calc_pout_vld_29; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4082.4]
  wire [33:0] _T_833; // @[Bitwise.scala 72:12:@4271.4]
  wire [33:0] calc_pout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4081.4]
  wire [33:0] calc_pout_29; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4272.4]
  wire  calc_pout_vld_30; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4095.4]
  wire [33:0] _T_838; // @[Bitwise.scala 72:12:@4275.4]
  wire [33:0] calc_pout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4094.4]
  wire [33:0] calc_pout_30; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4276.4]
  wire  calc_pout_vld_31; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4108.4]
  wire [33:0] _T_843; // @[Bitwise.scala 72:12:@4279.4]
  wire [33:0] calc_pout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4107.4]
  wire [33:0] calc_pout_31; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4280.4]
  wire  calc_fout_vld_0; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3703.4]
  wire [31:0] _T_885; // @[Bitwise.scala 72:12:@4284.4]
  wire [31:0] calc_fout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3701.4]
  wire [31:0] calc_fout_0; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4285.4]
  wire  calc_fout_vld_1; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3716.4]
  wire [31:0] _T_890; // @[Bitwise.scala 72:12:@4288.4]
  wire [31:0] calc_fout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3714.4]
  wire [31:0] calc_fout_1; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4289.4]
  wire  calc_fout_vld_2; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3729.4]
  wire [31:0] _T_895; // @[Bitwise.scala 72:12:@4292.4]
  wire [31:0] calc_fout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3727.4]
  wire [31:0] calc_fout_2; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4293.4]
  wire  calc_fout_vld_3; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3742.4]
  wire [31:0] _T_900; // @[Bitwise.scala 72:12:@4296.4]
  wire [31:0] calc_fout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3740.4]
  wire [31:0] calc_fout_3; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4297.4]
  wire  calc_fout_vld_4; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3755.4]
  wire [31:0] _T_905; // @[Bitwise.scala 72:12:@4300.4]
  wire [31:0] calc_fout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3753.4]
  wire [31:0] calc_fout_4; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4301.4]
  wire  calc_fout_vld_5; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3768.4]
  wire [31:0] _T_910; // @[Bitwise.scala 72:12:@4304.4]
  wire [31:0] calc_fout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3766.4]
  wire [31:0] calc_fout_5; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4305.4]
  wire  calc_fout_vld_6; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3781.4]
  wire [31:0] _T_915; // @[Bitwise.scala 72:12:@4308.4]
  wire [31:0] calc_fout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3779.4]
  wire [31:0] calc_fout_6; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4309.4]
  wire  calc_fout_vld_7; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3794.4]
  wire [31:0] _T_920; // @[Bitwise.scala 72:12:@4312.4]
  wire [31:0] calc_fout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3792.4]
  wire [31:0] calc_fout_7; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4313.4]
  wire  calc_fout_vld_8; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3807.4]
  wire [31:0] _T_925; // @[Bitwise.scala 72:12:@4316.4]
  wire [31:0] calc_fout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3805.4]
  wire [31:0] calc_fout_8; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4317.4]
  wire  calc_fout_vld_9; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3820.4]
  wire [31:0] _T_930; // @[Bitwise.scala 72:12:@4320.4]
  wire [31:0] calc_fout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3818.4]
  wire [31:0] calc_fout_9; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4321.4]
  wire  calc_fout_vld_10; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3833.4]
  wire [31:0] _T_935; // @[Bitwise.scala 72:12:@4324.4]
  wire [31:0] calc_fout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3831.4]
  wire [31:0] calc_fout_10; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4325.4]
  wire  calc_fout_vld_11; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3846.4]
  wire [31:0] _T_940; // @[Bitwise.scala 72:12:@4328.4]
  wire [31:0] calc_fout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3844.4]
  wire [31:0] calc_fout_11; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4329.4]
  wire  calc_fout_vld_12; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3859.4]
  wire [31:0] _T_945; // @[Bitwise.scala 72:12:@4332.4]
  wire [31:0] calc_fout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3857.4]
  wire [31:0] calc_fout_12; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4333.4]
  wire  calc_fout_vld_13; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3872.4]
  wire [31:0] _T_950; // @[Bitwise.scala 72:12:@4336.4]
  wire [31:0] calc_fout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3870.4]
  wire [31:0] calc_fout_13; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4337.4]
  wire  calc_fout_vld_14; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3885.4]
  wire [31:0] _T_955; // @[Bitwise.scala 72:12:@4340.4]
  wire [31:0] calc_fout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3883.4]
  wire [31:0] calc_fout_14; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4341.4]
  wire  calc_fout_vld_15; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3898.4]
  wire [31:0] _T_960; // @[Bitwise.scala 72:12:@4344.4]
  wire [31:0] calc_fout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3896.4]
  wire [31:0] calc_fout_15; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4345.4]
  wire  calc_fout_vld_16; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3911.4]
  wire [31:0] _T_965; // @[Bitwise.scala 72:12:@4348.4]
  wire [31:0] calc_fout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3909.4]
  wire [31:0] calc_fout_16; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4349.4]
  wire  calc_fout_vld_17; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3924.4]
  wire [31:0] _T_970; // @[Bitwise.scala 72:12:@4352.4]
  wire [31:0] calc_fout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3922.4]
  wire [31:0] calc_fout_17; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4353.4]
  wire  calc_fout_vld_18; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3937.4]
  wire [31:0] _T_975; // @[Bitwise.scala 72:12:@4356.4]
  wire [31:0] calc_fout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3935.4]
  wire [31:0] calc_fout_18; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4357.4]
  wire  calc_fout_vld_19; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3950.4]
  wire [31:0] _T_980; // @[Bitwise.scala 72:12:@4360.4]
  wire [31:0] calc_fout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3948.4]
  wire [31:0] calc_fout_19; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4361.4]
  wire  calc_fout_vld_20; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3963.4]
  wire [31:0] _T_985; // @[Bitwise.scala 72:12:@4364.4]
  wire [31:0] calc_fout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3961.4]
  wire [31:0] calc_fout_20; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4365.4]
  wire  calc_fout_vld_21; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3976.4]
  wire [31:0] _T_990; // @[Bitwise.scala 72:12:@4368.4]
  wire [31:0] calc_fout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3974.4]
  wire [31:0] calc_fout_21; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4369.4]
  wire  calc_fout_vld_22; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3989.4]
  wire [31:0] _T_995; // @[Bitwise.scala 72:12:@4372.4]
  wire [31:0] calc_fout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3987.4]
  wire [31:0] calc_fout_22; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4373.4]
  wire  calc_fout_vld_23; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4002.4]
  wire [31:0] _T_1000; // @[Bitwise.scala 72:12:@4376.4]
  wire [31:0] calc_fout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4000.4]
  wire [31:0] calc_fout_23; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4377.4]
  wire  calc_fout_vld_24; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4015.4]
  wire [31:0] _T_1005; // @[Bitwise.scala 72:12:@4380.4]
  wire [31:0] calc_fout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4013.4]
  wire [31:0] calc_fout_24; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4381.4]
  wire  calc_fout_vld_25; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4028.4]
  wire [31:0] _T_1010; // @[Bitwise.scala 72:12:@4384.4]
  wire [31:0] calc_fout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4026.4]
  wire [31:0] calc_fout_25; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4385.4]
  wire  calc_fout_vld_26; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4041.4]
  wire [31:0] _T_1015; // @[Bitwise.scala 72:12:@4388.4]
  wire [31:0] calc_fout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4039.4]
  wire [31:0] calc_fout_26; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4389.4]
  wire  calc_fout_vld_27; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4054.4]
  wire [31:0] _T_1020; // @[Bitwise.scala 72:12:@4392.4]
  wire [31:0] calc_fout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4052.4]
  wire [31:0] calc_fout_27; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4393.4]
  wire  calc_fout_vld_28; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4067.4]
  wire [31:0] _T_1025; // @[Bitwise.scala 72:12:@4396.4]
  wire [31:0] calc_fout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4065.4]
  wire [31:0] calc_fout_28; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4397.4]
  wire  calc_fout_vld_29; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4080.4]
  wire [31:0] _T_1030; // @[Bitwise.scala 72:12:@4400.4]
  wire [31:0] calc_fout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4078.4]
  wire [31:0] calc_fout_29; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4401.4]
  wire  calc_fout_vld_30; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4093.4]
  wire [31:0] _T_1035; // @[Bitwise.scala 72:12:@4404.4]
  wire [31:0] calc_fout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4091.4]
  wire [31:0] calc_fout_30; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4405.4]
  wire  calc_fout_vld_31; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4106.4]
  wire [31:0] _T_1040; // @[Bitwise.scala 72:12:@4408.4]
  wire [31:0] calc_fout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4104.4]
  wire [31:0] calc_fout_31; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4409.4]
  reg  _T_1044; // @[NV_soDLA_CACC_calculator_gate.scala 191:37:@4411.4]
  reg [31:0] _RAND_15;
  reg [5:0] _T_1047; // @[Reg.scala 19:20:@4414.4]
  reg [31:0] _RAND_16;
  wire [5:0] _GEN_10; // @[Reg.scala 20:19:@4415.4]
  wire [271:0] _T_1054; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4425.4]
  wire [543:0] _T_1062; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4433.4]
  wire [271:0] _T_1069; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4440.4]
  wire [1087:0] _T_1078; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4449.4]
  reg [1087:0] _T_1080; // @[Reg.scala 11:16:@4450.4]
  reg [1087:0] _RAND_17;
  wire [255:0] _T_1087; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4461.4]
  wire [511:0] _T_1095; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4469.4]
  wire [255:0] _T_1102; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4476.4]
  wire [1023:0] _T_1111; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4485.4]
  reg [1023:0] _T_1113; // @[Reg.scala 11:16:@4486.4]
  reg [1023:0] _RAND_18;
  reg  _T_1116; // @[NV_soDLA_CACC_calculator_gate.scala 197:28:@4491.4]
  reg [31:0] _RAND_19;
  reg  _T_1119; // @[NV_soDLA_CACC_calculator_gate.scala 198:27:@4494.4]
  reg [31:0] _RAND_20;
  reg  dlv_stripe_end; // @[Reg.scala 19:20:@4497.4]
  reg [31:0] _RAND_21;
  wire  _GEN_13; // @[Reg.scala 20:19:@4498.4]
  reg  dlv_layer_end; // @[Reg.scala 19:20:@4501.4]
  reg [31:0] _RAND_22;
  wire  _GEN_14; // @[Reg.scala 20:19:@4502.4]
  reg  dlv_sat_vld_d1; // @[NV_soDLA_CACC_calculator_gate.scala 204:33:@4507.4]
  reg [31:0] _RAND_23;
  reg  dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4508.4]
  reg [31:0] _RAND_24;
  reg  dlv_sat_bit_d1_0; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_25;
  reg  dlv_sat_bit_d1_1; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_26;
  reg  dlv_sat_bit_d1_2; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_27;
  reg  dlv_sat_bit_d1_3; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_28;
  reg  dlv_sat_bit_d1_4; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_29;
  reg  dlv_sat_bit_d1_5; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_30;
  reg  dlv_sat_bit_d1_6; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_31;
  reg  dlv_sat_bit_d1_7; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_32;
  reg  dlv_sat_bit_d1_8; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_33;
  reg  dlv_sat_bit_d1_9; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_34;
  reg  dlv_sat_bit_d1_10; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_35;
  reg  dlv_sat_bit_d1_11; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_36;
  reg  dlv_sat_bit_d1_12; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_37;
  reg  dlv_sat_bit_d1_13; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_38;
  reg  dlv_sat_bit_d1_14; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_39;
  reg  dlv_sat_bit_d1_15; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_40;
  reg  dlv_sat_bit_d1_16; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_41;
  reg  dlv_sat_bit_d1_17; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_42;
  reg  dlv_sat_bit_d1_18; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_43;
  reg  dlv_sat_bit_d1_19; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_44;
  reg  dlv_sat_bit_d1_20; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_45;
  reg  dlv_sat_bit_d1_21; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_46;
  reg  dlv_sat_bit_d1_22; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_47;
  reg  dlv_sat_bit_d1_23; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_48;
  reg  dlv_sat_bit_d1_24; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_49;
  reg  dlv_sat_bit_d1_25; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_50;
  reg  dlv_sat_bit_d1_26; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_51;
  reg  dlv_sat_bit_d1_27; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_52;
  reg  dlv_sat_bit_d1_28; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_53;
  reg  dlv_sat_bit_d1_29; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_54;
  reg  dlv_sat_bit_d1_30; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_55;
  reg  dlv_sat_bit_d1_31; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_56;
  reg  dlv_sat_clr_d1; // @[NV_soDLA_CACC_calculator_gate.scala 207:33:@4543.4]
  reg [31:0] _RAND_57;
  wire  dlv_sat_end; // @[NV_soDLA_CACC_calculator_gate.scala 210:42:@4544.4]
  wire  _T_1369; // @[NV_soDLA_CACC_calculator_gate.scala 211:44:@4545.4]
  wire  _T_1370; // @[NV_soDLA_CACC_calculator_gate.scala 211:42:@4546.4]
  wire  dlv_sat_clr; // @[NV_soDLA_CACC_calculator_gate.scala 211:57:@4547.4]
  wire  _GEN_15; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_0; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3702.4]
  wire  _GEN_16; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_1; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3715.4]
  wire  _GEN_17; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_2; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3728.4]
  wire  _GEN_18; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_3; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3741.4]
  wire  _GEN_19; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_4; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3754.4]
  wire  _GEN_20; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_5; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3767.4]
  wire  _GEN_21; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_6; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3780.4]
  wire  _GEN_22; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_7; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3793.4]
  wire  _GEN_23; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_8; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3806.4]
  wire  _GEN_24; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_9; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3819.4]
  wire  _GEN_25; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_10; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3832.4]
  wire  _GEN_26; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_11; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3845.4]
  wire  _GEN_27; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_12; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3858.4]
  wire  _GEN_28; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_13; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3871.4]
  wire  _GEN_29; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_14; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3884.4]
  wire  _GEN_30; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_15; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3897.4]
  wire  _GEN_31; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_16; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3910.4]
  wire  _GEN_32; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_17; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3923.4]
  wire  _GEN_33; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_18; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3936.4]
  wire  _GEN_34; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_19; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3949.4]
  wire  _GEN_35; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_20; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3962.4]
  wire  _GEN_36; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_21; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3975.4]
  wire  _GEN_37; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_22; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3988.4]
  wire  _GEN_38; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_23; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4001.4]
  wire  _GEN_39; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_24; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4014.4]
  wire  _GEN_40; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_25; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4027.4]
  wire  _GEN_41; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_26; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4040.4]
  wire  _GEN_42; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_27; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4053.4]
  wire  _GEN_43; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_28; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4066.4]
  wire  _GEN_44; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_29; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4079.4]
  wire  _GEN_45; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_30; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4092.4]
  wire  _GEN_46; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_31; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4105.4]
  wire  _GEN_47; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire [1:0] _T_1409; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4618.4]
  wire [1:0] _GEN_49; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4619.4]
  wire [2:0] _T_1410; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4619.4]
  wire [2:0] _GEN_50; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4620.4]
  wire [3:0] _T_1411; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4620.4]
  wire [3:0] _GEN_51; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4621.4]
  wire [4:0] _T_1412; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4621.4]
  wire [4:0] _GEN_52; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4622.4]
  wire [5:0] _T_1413; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4622.4]
  wire [5:0] _GEN_53; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4623.4]
  wire [6:0] _T_1414; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4623.4]
  wire [6:0] _GEN_54; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4624.4]
  wire [7:0] _T_1415; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4624.4]
  wire [7:0] _GEN_55; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4625.4]
  wire [8:0] _T_1416; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4625.4]
  wire [8:0] _GEN_56; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4626.4]
  wire [9:0] _T_1417; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4626.4]
  wire [9:0] _GEN_57; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4627.4]
  wire [10:0] _T_1418; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4627.4]
  wire [10:0] _GEN_58; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4628.4]
  wire [11:0] _T_1419; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4628.4]
  wire [11:0] _GEN_59; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4629.4]
  wire [12:0] _T_1420; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4629.4]
  wire [12:0] _GEN_60; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4630.4]
  wire [13:0] _T_1421; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4630.4]
  wire [13:0] _GEN_61; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4631.4]
  wire [14:0] _T_1422; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4631.4]
  wire [14:0] _GEN_62; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4632.4]
  wire [15:0] _T_1423; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4632.4]
  wire [15:0] _GEN_63; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4633.4]
  wire [16:0] _T_1424; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4633.4]
  wire [16:0] _GEN_64; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4634.4]
  wire [17:0] _T_1425; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4634.4]
  wire [17:0] _GEN_65; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4635.4]
  wire [18:0] _T_1426; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4635.4]
  wire [18:0] _GEN_66; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4636.4]
  wire [19:0] _T_1427; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4636.4]
  wire [19:0] _GEN_67; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4637.4]
  wire [20:0] _T_1428; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4637.4]
  wire [20:0] _GEN_68; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4638.4]
  wire [21:0] _T_1429; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4638.4]
  wire [21:0] _GEN_69; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4639.4]
  wire [22:0] _T_1430; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4639.4]
  wire [22:0] _GEN_70; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4640.4]
  wire [23:0] _T_1431; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4640.4]
  wire [23:0] _GEN_71; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4641.4]
  wire [24:0] _T_1432; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4641.4]
  wire [24:0] _GEN_72; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4642.4]
  wire [25:0] _T_1433; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4642.4]
  wire [25:0] _GEN_73; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4643.4]
  wire [26:0] _T_1434; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4643.4]
  wire [26:0] _GEN_74; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4644.4]
  wire [27:0] _T_1435; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4644.4]
  wire [27:0] _GEN_75; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4645.4]
  wire [28:0] _T_1436; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4645.4]
  wire [28:0] _GEN_76; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4646.4]
  wire [29:0] _T_1437; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4646.4]
  wire [29:0] _GEN_77; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4647.4]
  wire [30:0] _T_1438; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4647.4]
  wire [30:0] _GEN_78; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4648.4]
  wire [31:0] sat_sum; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4648.4]
  reg [31:0] sat_count; // @[NV_soDLA_CACC_calculator_gate.scala 221:28:@4649.4]
  reg [31:0] _RAND_58;
  wire [32:0] _T_1441; // @[NV_soDLA_CACC_calculator_gate.scala 222:36:@4650.4]
  wire [31:0] sat_count_inc; // @[NV_soDLA_CACC_calculator_gate.scala 222:47:@4651.4]
  wire  sat_carry; // @[NV_soDLA_CACC_calculator_gate.scala 223:43:@4653.4]
  wire [31:0] _T_1448; // @[NV_soDLA_CACC_calculator_gate.scala 225:26:@4655.4]
  wire [31:0] sat_count_w; // @[NV_soDLA_CACC_calculator_gate.scala 224:26:@4656.4]
  wire  _T_1450; // @[NV_soDLA_CACC_calculator_gate.scala 226:49:@4657.4]
  wire  _T_1451; // @[NV_soDLA_CACC_calculator_gate.scala 226:54:@4658.4]
  wire  sat_reg_en; // @[NV_soDLA_CACC_calculator_gate.scala 226:37:@4659.4]
  wire [31:0] _GEN_48; // @[NV_soDLA_CACC_calculator_gate.scala 227:21:@4660.4]
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_1 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_1_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_1_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_1_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_1_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_1_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_1_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_1_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_1_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_1_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_1_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_1_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_1_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_1_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_2 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_2_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_2_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_2_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_2_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_2_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_2_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_2_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_2_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_2_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_2_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_2_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_2_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_2_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_3 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_3_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_3_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_3_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_3_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_3_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_3_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_3_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_3_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_3_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_3_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_3_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_3_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_3_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_4 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_4_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_4_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_4_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_4_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_4_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_4_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_4_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_4_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_4_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_4_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_4_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_4_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_4_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_5 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_5_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_5_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_5_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_5_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_5_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_5_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_5_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_5_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_5_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_5_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_5_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_5_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_5_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_6 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_6_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_6_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_6_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_6_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_6_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_6_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_6_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_6_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_6_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_6_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_6_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_6_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_6_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_7 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_7_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_7_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_7_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_7_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_7_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_7_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_7_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_7_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_7_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_7_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_7_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_7_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_7_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_8 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_8_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_8_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_8_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_8_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_8_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_8_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_8_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_8_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_8_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_8_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_8_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_8_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_8_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_9 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_9_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_9_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_9_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_9_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_9_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_9_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_9_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_9_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_9_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_9_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_9_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_9_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_9_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_10 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_10_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_10_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_10_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_10_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_10_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_10_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_10_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_10_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_10_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_10_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_10_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_10_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_10_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_11 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_11_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_11_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_11_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_11_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_11_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_11_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_11_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_11_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_11_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_11_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_11_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_11_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_11_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_12 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_12_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_12_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_12_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_12_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_12_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_12_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_12_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_12_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_12_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_12_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_12_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_12_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_12_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_13 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_13_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_13_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_13_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_13_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_13_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_13_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_13_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_13_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_13_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_13_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_13_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_13_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_13_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_14 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_14_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_14_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_14_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_14_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_14_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_14_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_14_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_14_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_14_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_14_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_14_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_14_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_14_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_15 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_15_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_15_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_15_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_15_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_15_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_15_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_15_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_15_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_15_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_15_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_15_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_15_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_15_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_16 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_16_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_16_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_16_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_16_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_16_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_16_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_16_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_16_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_16_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_16_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_16_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_16_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_16_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_17 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_17_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_17_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_17_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_17_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_17_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_17_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_17_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_17_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_17_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_17_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_17_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_17_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_17_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_18 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_18_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_18_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_18_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_18_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_18_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_18_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_18_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_18_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_18_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_18_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_18_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_18_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_18_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_19 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_19_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_19_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_19_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_19_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_19_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_19_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_19_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_19_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_19_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_19_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_19_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_19_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_19_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_20 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_20_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_20_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_20_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_20_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_20_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_20_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_20_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_20_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_20_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_20_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_20_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_20_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_20_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_21 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_21_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_21_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_21_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_21_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_21_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_21_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_21_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_21_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_21_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_21_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_21_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_21_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_21_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_22 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_22_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_22_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_22_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_22_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_22_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_22_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_22_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_22_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_22_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_22_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_22_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_22_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_22_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_23 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_23_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_23_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_23_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_23_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_23_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_23_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_23_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_23_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_23_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_23_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_23_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_23_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_23_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_24 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_24_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_24_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_24_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_24_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_24_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_24_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_24_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_24_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_24_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_24_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_24_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_24_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_24_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_25 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_25_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_25_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_25_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_25_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_25_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_25_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_25_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_25_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_25_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_25_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_25_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_25_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_25_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_26 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_26_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_26_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_26_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_26_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_26_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_26_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_26_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_26_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_26_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_26_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_26_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_26_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_26_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_27 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_27_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_27_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_27_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_27_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_27_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_27_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_27_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_27_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_27_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_27_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_27_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_27_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_27_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_28 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_28_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_28_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_28_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_28_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_28_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_28_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_28_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_28_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_28_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_28_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_28_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_28_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_28_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_29 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_29_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_29_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_29_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_29_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_29_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_29_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_29_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_29_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_29_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_29_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_29_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_29_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_29_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_30 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_30_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_30_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_30_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_30_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_30_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_30_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_30_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_30_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_30_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_30_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_30_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_30_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_30_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_31 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_31_nvdla_core_clk),
    .nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_31_nvdla_core_rstn),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_31_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_gate_31_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_gate_31_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_gate_31_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_gate_31_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_gate_31_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_gate_31_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_gate_31_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_gate_31_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_gate_31_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_31_out_partial_valid)
  );
  assign _T_130 = nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_calculator_gate.scala 70:38:@3304.4]
  assign _GEN_0 = accu_ctrl_valid ? accu_ctrl_pd : accu_ctrl_pd_d1; // @[Reg.scala 20:19:@3371.4]
  assign calc_addr = accu_ctrl_pd_d1[5:0]; // @[NV_soDLA_CACC_calculator_gate.scala 81:36:@3387.4]
  assign calc_stripe_end = accu_ctrl_pd_d1[9]; // @[NV_soDLA_CACC_calculator_gate.scala 83:42:@3389.4]
  assign calc_channel_end = accu_ctrl_pd_d1[10]; // @[NV_soDLA_CACC_calculator_gate.scala 84:43:@3390.4]
  assign calc_layer_end = accu_ctrl_pd_d1[11]; // @[NV_soDLA_CACC_calculator_gate.scala 85:41:@3391.4]
  assign calc_in_mask_0 = mac_a2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3397.4]
  assign calc_in_mask_16 = mac_b2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3399.4]
  assign calc_in_mask_1 = mac_a2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3403.4]
  assign calc_in_mask_17 = mac_b2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3405.4]
  assign calc_in_mask_2 = mac_a2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3409.4]
  assign calc_in_mask_18 = mac_b2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3411.4]
  assign calc_in_mask_3 = mac_a2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3415.4]
  assign calc_in_mask_19 = mac_b2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3417.4]
  assign calc_in_mask_4 = mac_a2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3421.4]
  assign calc_in_mask_20 = mac_b2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3423.4]
  assign calc_in_mask_5 = mac_a2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3427.4]
  assign calc_in_mask_21 = mac_b2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3429.4]
  assign calc_in_mask_6 = mac_a2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3433.4]
  assign calc_in_mask_22 = mac_b2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3435.4]
  assign calc_in_mask_7 = mac_a2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3439.4]
  assign calc_in_mask_23 = mac_b2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3441.4]
  assign calc_in_mask_8 = mac_a2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3445.4]
  assign calc_in_mask_24 = mac_b2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3447.4]
  assign calc_in_mask_9 = mac_a2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3451.4]
  assign calc_in_mask_25 = mac_b2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3453.4]
  assign calc_in_mask_10 = mac_a2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3457.4]
  assign calc_in_mask_26 = mac_b2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3459.4]
  assign calc_in_mask_11 = mac_a2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3463.4]
  assign calc_in_mask_27 = mac_b2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3465.4]
  assign calc_in_mask_12 = mac_a2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3469.4]
  assign calc_in_mask_28 = mac_b2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3471.4]
  assign calc_in_mask_13 = mac_a2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3475.4]
  assign calc_in_mask_29 = mac_b2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3477.4]
  assign calc_in_mask_14 = mac_a2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3481.4]
  assign calc_in_mask_30 = mac_b2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3483.4]
  assign calc_in_mask_15 = mac_a2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3487.4]
  assign calc_in_mask_31 = mac_b2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3489.4]
  assign calc_dlv_valid = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 99:37:@3589.4]
  assign _T_420 = ~ calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 100:36:@3590.4]
  assign calc_wr_en = calc_valid & _T_420; // @[NV_soDLA_CACC_calculator_gate.scala 100:33:@3591.4]
  assign _GEN_4 = calc_valid ? calc_addr : _T_624; // @[NV_soDLA_CACC_calculator_gate.scala 147:30:@4123.4]
  assign _GEN_5 = _T_610 ? _T_624 : calc_addr_out; // @[NV_soDLA_CACC_calculator_gate.scala 147:30:@4128.4]
  assign _GEN_6 = calc_dlv_valid ? calc_stripe_end : _T_638; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4144.4]
  assign _GEN_7 = calc_dlv_valid ? calc_layer_end : _T_645; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4144.4]
  assign _GEN_8 = _T_631 ? _T_638 : calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4149.4]
  assign _GEN_9 = _T_631 ? _T_645 : calc_layer_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4149.4]
  assign calc_pout_vld_0 = NV_soDLA_CACC_CALC_int8_gate_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3705.4]
  assign _T_688 = calc_pout_vld_0 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4155.4]
  assign calc_pout_sum_0 = NV_soDLA_CACC_CALC_int8_gate_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3704.4]
  assign calc_pout_0 = _T_688 & calc_pout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4156.4]
  assign calc_pout_vld_1 = NV_soDLA_CACC_CALC_int8_gate_1_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3718.4]
  assign _T_693 = calc_pout_vld_1 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4159.4]
  assign calc_pout_sum_1 = NV_soDLA_CACC_CALC_int8_gate_1_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3717.4]
  assign calc_pout_1 = _T_693 & calc_pout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4160.4]
  assign calc_pout_vld_2 = NV_soDLA_CACC_CALC_int8_gate_2_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3731.4]
  assign _T_698 = calc_pout_vld_2 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4163.4]
  assign calc_pout_sum_2 = NV_soDLA_CACC_CALC_int8_gate_2_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3730.4]
  assign calc_pout_2 = _T_698 & calc_pout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4164.4]
  assign calc_pout_vld_3 = NV_soDLA_CACC_CALC_int8_gate_3_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3744.4]
  assign _T_703 = calc_pout_vld_3 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4167.4]
  assign calc_pout_sum_3 = NV_soDLA_CACC_CALC_int8_gate_3_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3743.4]
  assign calc_pout_3 = _T_703 & calc_pout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4168.4]
  assign calc_pout_vld_4 = NV_soDLA_CACC_CALC_int8_gate_4_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3757.4]
  assign _T_708 = calc_pout_vld_4 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4171.4]
  assign calc_pout_sum_4 = NV_soDLA_CACC_CALC_int8_gate_4_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3756.4]
  assign calc_pout_4 = _T_708 & calc_pout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4172.4]
  assign calc_pout_vld_5 = NV_soDLA_CACC_CALC_int8_gate_5_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3770.4]
  assign _T_713 = calc_pout_vld_5 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4175.4]
  assign calc_pout_sum_5 = NV_soDLA_CACC_CALC_int8_gate_5_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3769.4]
  assign calc_pout_5 = _T_713 & calc_pout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4176.4]
  assign calc_pout_vld_6 = NV_soDLA_CACC_CALC_int8_gate_6_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3783.4]
  assign _T_718 = calc_pout_vld_6 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4179.4]
  assign calc_pout_sum_6 = NV_soDLA_CACC_CALC_int8_gate_6_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3782.4]
  assign calc_pout_6 = _T_718 & calc_pout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4180.4]
  assign calc_pout_vld_7 = NV_soDLA_CACC_CALC_int8_gate_7_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3796.4]
  assign _T_723 = calc_pout_vld_7 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4183.4]
  assign calc_pout_sum_7 = NV_soDLA_CACC_CALC_int8_gate_7_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3795.4]
  assign calc_pout_7 = _T_723 & calc_pout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4184.4]
  assign calc_pout_vld_8 = NV_soDLA_CACC_CALC_int8_gate_8_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3809.4]
  assign _T_728 = calc_pout_vld_8 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4187.4]
  assign calc_pout_sum_8 = NV_soDLA_CACC_CALC_int8_gate_8_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3808.4]
  assign calc_pout_8 = _T_728 & calc_pout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4188.4]
  assign calc_pout_vld_9 = NV_soDLA_CACC_CALC_int8_gate_9_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3822.4]
  assign _T_733 = calc_pout_vld_9 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4191.4]
  assign calc_pout_sum_9 = NV_soDLA_CACC_CALC_int8_gate_9_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3821.4]
  assign calc_pout_9 = _T_733 & calc_pout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4192.4]
  assign calc_pout_vld_10 = NV_soDLA_CACC_CALC_int8_gate_10_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3835.4]
  assign _T_738 = calc_pout_vld_10 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4195.4]
  assign calc_pout_sum_10 = NV_soDLA_CACC_CALC_int8_gate_10_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3834.4]
  assign calc_pout_10 = _T_738 & calc_pout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4196.4]
  assign calc_pout_vld_11 = NV_soDLA_CACC_CALC_int8_gate_11_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3848.4]
  assign _T_743 = calc_pout_vld_11 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4199.4]
  assign calc_pout_sum_11 = NV_soDLA_CACC_CALC_int8_gate_11_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3847.4]
  assign calc_pout_11 = _T_743 & calc_pout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4200.4]
  assign calc_pout_vld_12 = NV_soDLA_CACC_CALC_int8_gate_12_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3861.4]
  assign _T_748 = calc_pout_vld_12 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4203.4]
  assign calc_pout_sum_12 = NV_soDLA_CACC_CALC_int8_gate_12_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3860.4]
  assign calc_pout_12 = _T_748 & calc_pout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4204.4]
  assign calc_pout_vld_13 = NV_soDLA_CACC_CALC_int8_gate_13_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3874.4]
  assign _T_753 = calc_pout_vld_13 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4207.4]
  assign calc_pout_sum_13 = NV_soDLA_CACC_CALC_int8_gate_13_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3873.4]
  assign calc_pout_13 = _T_753 & calc_pout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4208.4]
  assign calc_pout_vld_14 = NV_soDLA_CACC_CALC_int8_gate_14_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3887.4]
  assign _T_758 = calc_pout_vld_14 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4211.4]
  assign calc_pout_sum_14 = NV_soDLA_CACC_CALC_int8_gate_14_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3886.4]
  assign calc_pout_14 = _T_758 & calc_pout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4212.4]
  assign calc_pout_vld_15 = NV_soDLA_CACC_CALC_int8_gate_15_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3900.4]
  assign _T_763 = calc_pout_vld_15 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4215.4]
  assign calc_pout_sum_15 = NV_soDLA_CACC_CALC_int8_gate_15_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3899.4]
  assign calc_pout_15 = _T_763 & calc_pout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4216.4]
  assign calc_pout_vld_16 = NV_soDLA_CACC_CALC_int8_gate_16_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3913.4]
  assign _T_768 = calc_pout_vld_16 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4219.4]
  assign calc_pout_sum_16 = NV_soDLA_CACC_CALC_int8_gate_16_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3912.4]
  assign calc_pout_16 = _T_768 & calc_pout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4220.4]
  assign calc_pout_vld_17 = NV_soDLA_CACC_CALC_int8_gate_17_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3926.4]
  assign _T_773 = calc_pout_vld_17 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4223.4]
  assign calc_pout_sum_17 = NV_soDLA_CACC_CALC_int8_gate_17_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3925.4]
  assign calc_pout_17 = _T_773 & calc_pout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4224.4]
  assign calc_pout_vld_18 = NV_soDLA_CACC_CALC_int8_gate_18_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3939.4]
  assign _T_778 = calc_pout_vld_18 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4227.4]
  assign calc_pout_sum_18 = NV_soDLA_CACC_CALC_int8_gate_18_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3938.4]
  assign calc_pout_18 = _T_778 & calc_pout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4228.4]
  assign calc_pout_vld_19 = NV_soDLA_CACC_CALC_int8_gate_19_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3952.4]
  assign _T_783 = calc_pout_vld_19 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4231.4]
  assign calc_pout_sum_19 = NV_soDLA_CACC_CALC_int8_gate_19_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3951.4]
  assign calc_pout_19 = _T_783 & calc_pout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4232.4]
  assign calc_pout_vld_20 = NV_soDLA_CACC_CALC_int8_gate_20_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3965.4]
  assign _T_788 = calc_pout_vld_20 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4235.4]
  assign calc_pout_sum_20 = NV_soDLA_CACC_CALC_int8_gate_20_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3964.4]
  assign calc_pout_20 = _T_788 & calc_pout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4236.4]
  assign calc_pout_vld_21 = NV_soDLA_CACC_CALC_int8_gate_21_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3978.4]
  assign _T_793 = calc_pout_vld_21 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4239.4]
  assign calc_pout_sum_21 = NV_soDLA_CACC_CALC_int8_gate_21_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3977.4]
  assign calc_pout_21 = _T_793 & calc_pout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4240.4]
  assign calc_pout_vld_22 = NV_soDLA_CACC_CALC_int8_gate_22_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3991.4]
  assign _T_798 = calc_pout_vld_22 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4243.4]
  assign calc_pout_sum_22 = NV_soDLA_CACC_CALC_int8_gate_22_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3990.4]
  assign calc_pout_22 = _T_798 & calc_pout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4244.4]
  assign calc_pout_vld_23 = NV_soDLA_CACC_CALC_int8_gate_23_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4004.4]
  assign _T_803 = calc_pout_vld_23 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4247.4]
  assign calc_pout_sum_23 = NV_soDLA_CACC_CALC_int8_gate_23_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4003.4]
  assign calc_pout_23 = _T_803 & calc_pout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4248.4]
  assign calc_pout_vld_24 = NV_soDLA_CACC_CALC_int8_gate_24_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4017.4]
  assign _T_808 = calc_pout_vld_24 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4251.4]
  assign calc_pout_sum_24 = NV_soDLA_CACC_CALC_int8_gate_24_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4016.4]
  assign calc_pout_24 = _T_808 & calc_pout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4252.4]
  assign calc_pout_vld_25 = NV_soDLA_CACC_CALC_int8_gate_25_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4030.4]
  assign _T_813 = calc_pout_vld_25 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4255.4]
  assign calc_pout_sum_25 = NV_soDLA_CACC_CALC_int8_gate_25_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4029.4]
  assign calc_pout_25 = _T_813 & calc_pout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4256.4]
  assign calc_pout_vld_26 = NV_soDLA_CACC_CALC_int8_gate_26_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4043.4]
  assign _T_818 = calc_pout_vld_26 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4259.4]
  assign calc_pout_sum_26 = NV_soDLA_CACC_CALC_int8_gate_26_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4042.4]
  assign calc_pout_26 = _T_818 & calc_pout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4260.4]
  assign calc_pout_vld_27 = NV_soDLA_CACC_CALC_int8_gate_27_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4056.4]
  assign _T_823 = calc_pout_vld_27 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4263.4]
  assign calc_pout_sum_27 = NV_soDLA_CACC_CALC_int8_gate_27_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4055.4]
  assign calc_pout_27 = _T_823 & calc_pout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4264.4]
  assign calc_pout_vld_28 = NV_soDLA_CACC_CALC_int8_gate_28_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4069.4]
  assign _T_828 = calc_pout_vld_28 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4267.4]
  assign calc_pout_sum_28 = NV_soDLA_CACC_CALC_int8_gate_28_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4068.4]
  assign calc_pout_28 = _T_828 & calc_pout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4268.4]
  assign calc_pout_vld_29 = NV_soDLA_CACC_CALC_int8_gate_29_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4082.4]
  assign _T_833 = calc_pout_vld_29 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4271.4]
  assign calc_pout_sum_29 = NV_soDLA_CACC_CALC_int8_gate_29_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4081.4]
  assign calc_pout_29 = _T_833 & calc_pout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4272.4]
  assign calc_pout_vld_30 = NV_soDLA_CACC_CALC_int8_gate_30_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4095.4]
  assign _T_838 = calc_pout_vld_30 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4275.4]
  assign calc_pout_sum_30 = NV_soDLA_CACC_CALC_int8_gate_30_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4094.4]
  assign calc_pout_30 = _T_838 & calc_pout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4276.4]
  assign calc_pout_vld_31 = NV_soDLA_CACC_CALC_int8_gate_31_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4108.4]
  assign _T_843 = calc_pout_vld_31 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4279.4]
  assign calc_pout_sum_31 = NV_soDLA_CACC_CALC_int8_gate_31_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4107.4]
  assign calc_pout_31 = _T_843 & calc_pout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4280.4]
  assign calc_fout_vld_0 = NV_soDLA_CACC_CALC_int8_gate_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3703.4]
  assign _T_885 = calc_fout_vld_0 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4284.4]
  assign calc_fout_sum_0 = NV_soDLA_CACC_CALC_int8_gate_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3701.4]
  assign calc_fout_0 = _T_885 & calc_fout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4285.4]
  assign calc_fout_vld_1 = NV_soDLA_CACC_CALC_int8_gate_1_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3716.4]
  assign _T_890 = calc_fout_vld_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4288.4]
  assign calc_fout_sum_1 = NV_soDLA_CACC_CALC_int8_gate_1_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3714.4]
  assign calc_fout_1 = _T_890 & calc_fout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4289.4]
  assign calc_fout_vld_2 = NV_soDLA_CACC_CALC_int8_gate_2_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3729.4]
  assign _T_895 = calc_fout_vld_2 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4292.4]
  assign calc_fout_sum_2 = NV_soDLA_CACC_CALC_int8_gate_2_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3727.4]
  assign calc_fout_2 = _T_895 & calc_fout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4293.4]
  assign calc_fout_vld_3 = NV_soDLA_CACC_CALC_int8_gate_3_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3742.4]
  assign _T_900 = calc_fout_vld_3 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4296.4]
  assign calc_fout_sum_3 = NV_soDLA_CACC_CALC_int8_gate_3_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3740.4]
  assign calc_fout_3 = _T_900 & calc_fout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4297.4]
  assign calc_fout_vld_4 = NV_soDLA_CACC_CALC_int8_gate_4_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3755.4]
  assign _T_905 = calc_fout_vld_4 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4300.4]
  assign calc_fout_sum_4 = NV_soDLA_CACC_CALC_int8_gate_4_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3753.4]
  assign calc_fout_4 = _T_905 & calc_fout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4301.4]
  assign calc_fout_vld_5 = NV_soDLA_CACC_CALC_int8_gate_5_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3768.4]
  assign _T_910 = calc_fout_vld_5 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4304.4]
  assign calc_fout_sum_5 = NV_soDLA_CACC_CALC_int8_gate_5_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3766.4]
  assign calc_fout_5 = _T_910 & calc_fout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4305.4]
  assign calc_fout_vld_6 = NV_soDLA_CACC_CALC_int8_gate_6_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3781.4]
  assign _T_915 = calc_fout_vld_6 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4308.4]
  assign calc_fout_sum_6 = NV_soDLA_CACC_CALC_int8_gate_6_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3779.4]
  assign calc_fout_6 = _T_915 & calc_fout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4309.4]
  assign calc_fout_vld_7 = NV_soDLA_CACC_CALC_int8_gate_7_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3794.4]
  assign _T_920 = calc_fout_vld_7 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4312.4]
  assign calc_fout_sum_7 = NV_soDLA_CACC_CALC_int8_gate_7_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3792.4]
  assign calc_fout_7 = _T_920 & calc_fout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4313.4]
  assign calc_fout_vld_8 = NV_soDLA_CACC_CALC_int8_gate_8_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3807.4]
  assign _T_925 = calc_fout_vld_8 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4316.4]
  assign calc_fout_sum_8 = NV_soDLA_CACC_CALC_int8_gate_8_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3805.4]
  assign calc_fout_8 = _T_925 & calc_fout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4317.4]
  assign calc_fout_vld_9 = NV_soDLA_CACC_CALC_int8_gate_9_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3820.4]
  assign _T_930 = calc_fout_vld_9 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4320.4]
  assign calc_fout_sum_9 = NV_soDLA_CACC_CALC_int8_gate_9_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3818.4]
  assign calc_fout_9 = _T_930 & calc_fout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4321.4]
  assign calc_fout_vld_10 = NV_soDLA_CACC_CALC_int8_gate_10_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3833.4]
  assign _T_935 = calc_fout_vld_10 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4324.4]
  assign calc_fout_sum_10 = NV_soDLA_CACC_CALC_int8_gate_10_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3831.4]
  assign calc_fout_10 = _T_935 & calc_fout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4325.4]
  assign calc_fout_vld_11 = NV_soDLA_CACC_CALC_int8_gate_11_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3846.4]
  assign _T_940 = calc_fout_vld_11 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4328.4]
  assign calc_fout_sum_11 = NV_soDLA_CACC_CALC_int8_gate_11_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3844.4]
  assign calc_fout_11 = _T_940 & calc_fout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4329.4]
  assign calc_fout_vld_12 = NV_soDLA_CACC_CALC_int8_gate_12_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3859.4]
  assign _T_945 = calc_fout_vld_12 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4332.4]
  assign calc_fout_sum_12 = NV_soDLA_CACC_CALC_int8_gate_12_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3857.4]
  assign calc_fout_12 = _T_945 & calc_fout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4333.4]
  assign calc_fout_vld_13 = NV_soDLA_CACC_CALC_int8_gate_13_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3872.4]
  assign _T_950 = calc_fout_vld_13 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4336.4]
  assign calc_fout_sum_13 = NV_soDLA_CACC_CALC_int8_gate_13_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3870.4]
  assign calc_fout_13 = _T_950 & calc_fout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4337.4]
  assign calc_fout_vld_14 = NV_soDLA_CACC_CALC_int8_gate_14_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3885.4]
  assign _T_955 = calc_fout_vld_14 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4340.4]
  assign calc_fout_sum_14 = NV_soDLA_CACC_CALC_int8_gate_14_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3883.4]
  assign calc_fout_14 = _T_955 & calc_fout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4341.4]
  assign calc_fout_vld_15 = NV_soDLA_CACC_CALC_int8_gate_15_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3898.4]
  assign _T_960 = calc_fout_vld_15 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4344.4]
  assign calc_fout_sum_15 = NV_soDLA_CACC_CALC_int8_gate_15_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3896.4]
  assign calc_fout_15 = _T_960 & calc_fout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4345.4]
  assign calc_fout_vld_16 = NV_soDLA_CACC_CALC_int8_gate_16_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3911.4]
  assign _T_965 = calc_fout_vld_16 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4348.4]
  assign calc_fout_sum_16 = NV_soDLA_CACC_CALC_int8_gate_16_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3909.4]
  assign calc_fout_16 = _T_965 & calc_fout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4349.4]
  assign calc_fout_vld_17 = NV_soDLA_CACC_CALC_int8_gate_17_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3924.4]
  assign _T_970 = calc_fout_vld_17 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4352.4]
  assign calc_fout_sum_17 = NV_soDLA_CACC_CALC_int8_gate_17_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3922.4]
  assign calc_fout_17 = _T_970 & calc_fout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4353.4]
  assign calc_fout_vld_18 = NV_soDLA_CACC_CALC_int8_gate_18_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3937.4]
  assign _T_975 = calc_fout_vld_18 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4356.4]
  assign calc_fout_sum_18 = NV_soDLA_CACC_CALC_int8_gate_18_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3935.4]
  assign calc_fout_18 = _T_975 & calc_fout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4357.4]
  assign calc_fout_vld_19 = NV_soDLA_CACC_CALC_int8_gate_19_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3950.4]
  assign _T_980 = calc_fout_vld_19 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4360.4]
  assign calc_fout_sum_19 = NV_soDLA_CACC_CALC_int8_gate_19_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3948.4]
  assign calc_fout_19 = _T_980 & calc_fout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4361.4]
  assign calc_fout_vld_20 = NV_soDLA_CACC_CALC_int8_gate_20_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3963.4]
  assign _T_985 = calc_fout_vld_20 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4364.4]
  assign calc_fout_sum_20 = NV_soDLA_CACC_CALC_int8_gate_20_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3961.4]
  assign calc_fout_20 = _T_985 & calc_fout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4365.4]
  assign calc_fout_vld_21 = NV_soDLA_CACC_CALC_int8_gate_21_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3976.4]
  assign _T_990 = calc_fout_vld_21 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4368.4]
  assign calc_fout_sum_21 = NV_soDLA_CACC_CALC_int8_gate_21_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3974.4]
  assign calc_fout_21 = _T_990 & calc_fout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4369.4]
  assign calc_fout_vld_22 = NV_soDLA_CACC_CALC_int8_gate_22_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3989.4]
  assign _T_995 = calc_fout_vld_22 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4372.4]
  assign calc_fout_sum_22 = NV_soDLA_CACC_CALC_int8_gate_22_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3987.4]
  assign calc_fout_22 = _T_995 & calc_fout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4373.4]
  assign calc_fout_vld_23 = NV_soDLA_CACC_CALC_int8_gate_23_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4002.4]
  assign _T_1000 = calc_fout_vld_23 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4376.4]
  assign calc_fout_sum_23 = NV_soDLA_CACC_CALC_int8_gate_23_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4000.4]
  assign calc_fout_23 = _T_1000 & calc_fout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4377.4]
  assign calc_fout_vld_24 = NV_soDLA_CACC_CALC_int8_gate_24_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4015.4]
  assign _T_1005 = calc_fout_vld_24 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4380.4]
  assign calc_fout_sum_24 = NV_soDLA_CACC_CALC_int8_gate_24_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4013.4]
  assign calc_fout_24 = _T_1005 & calc_fout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4381.4]
  assign calc_fout_vld_25 = NV_soDLA_CACC_CALC_int8_gate_25_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4028.4]
  assign _T_1010 = calc_fout_vld_25 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4384.4]
  assign calc_fout_sum_25 = NV_soDLA_CACC_CALC_int8_gate_25_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4026.4]
  assign calc_fout_25 = _T_1010 & calc_fout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4385.4]
  assign calc_fout_vld_26 = NV_soDLA_CACC_CALC_int8_gate_26_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4041.4]
  assign _T_1015 = calc_fout_vld_26 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4388.4]
  assign calc_fout_sum_26 = NV_soDLA_CACC_CALC_int8_gate_26_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4039.4]
  assign calc_fout_26 = _T_1015 & calc_fout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4389.4]
  assign calc_fout_vld_27 = NV_soDLA_CACC_CALC_int8_gate_27_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4054.4]
  assign _T_1020 = calc_fout_vld_27 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4392.4]
  assign calc_fout_sum_27 = NV_soDLA_CACC_CALC_int8_gate_27_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4052.4]
  assign calc_fout_27 = _T_1020 & calc_fout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4393.4]
  assign calc_fout_vld_28 = NV_soDLA_CACC_CALC_int8_gate_28_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4067.4]
  assign _T_1025 = calc_fout_vld_28 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4396.4]
  assign calc_fout_sum_28 = NV_soDLA_CACC_CALC_int8_gate_28_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4065.4]
  assign calc_fout_28 = _T_1025 & calc_fout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4397.4]
  assign calc_fout_vld_29 = NV_soDLA_CACC_CALC_int8_gate_29_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4080.4]
  assign _T_1030 = calc_fout_vld_29 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4400.4]
  assign calc_fout_sum_29 = NV_soDLA_CACC_CALC_int8_gate_29_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4078.4]
  assign calc_fout_29 = _T_1030 & calc_fout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4401.4]
  assign calc_fout_vld_30 = NV_soDLA_CACC_CALC_int8_gate_30_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4093.4]
  assign _T_1035 = calc_fout_vld_30 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4404.4]
  assign calc_fout_sum_30 = NV_soDLA_CACC_CALC_int8_gate_30_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4091.4]
  assign calc_fout_30 = _T_1035 & calc_fout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4405.4]
  assign calc_fout_vld_31 = NV_soDLA_CACC_CALC_int8_gate_31_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4106.4]
  assign _T_1040 = calc_fout_vld_31 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4408.4]
  assign calc_fout_sum_31 = NV_soDLA_CACC_CALC_int8_gate_31_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4104.4]
  assign calc_fout_31 = _T_1040 & calc_fout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4409.4]
  assign _GEN_10 = calc_wr_en_out ? calc_addr_out : _T_1047; // @[Reg.scala 20:19:@4415.4]
  assign _T_1054 = {calc_pout_7,calc_pout_6,calc_pout_5,calc_pout_4,calc_pout_3,calc_pout_2,calc_pout_1,calc_pout_0}; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4425.4]
  assign _T_1062 = {calc_pout_15,calc_pout_14,calc_pout_13,calc_pout_12,calc_pout_11,calc_pout_10,calc_pout_9,calc_pout_8,_T_1054}; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4433.4]
  assign _T_1069 = {calc_pout_23,calc_pout_22,calc_pout_21,calc_pout_20,calc_pout_19,calc_pout_18,calc_pout_17,calc_pout_16}; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4440.4]
  assign _T_1078 = {calc_pout_31,calc_pout_30,calc_pout_29,calc_pout_28,calc_pout_27,calc_pout_26,calc_pout_25,calc_pout_24,_T_1069,_T_1062}; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4449.4]
  assign _T_1087 = {calc_fout_7,calc_fout_6,calc_fout_5,calc_fout_4,calc_fout_3,calc_fout_2,calc_fout_1,calc_fout_0}; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4461.4]
  assign _T_1095 = {calc_fout_15,calc_fout_14,calc_fout_13,calc_fout_12,calc_fout_11,calc_fout_10,calc_fout_9,calc_fout_8,_T_1087}; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4469.4]
  assign _T_1102 = {calc_fout_23,calc_fout_22,calc_fout_21,calc_fout_20,calc_fout_19,calc_fout_18,calc_fout_17,calc_fout_16}; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4476.4]
  assign _T_1111 = {calc_fout_31,calc_fout_30,calc_fout_29,calc_fout_28,calc_fout_27,calc_fout_26,calc_fout_25,calc_fout_24,_T_1102,_T_1095}; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4485.4]
  assign _GEN_13 = calc_dlv_valid_out ? calc_stripe_end_out : dlv_stripe_end; // @[Reg.scala 20:19:@4498.4]
  assign _GEN_14 = calc_dlv_valid_out ? calc_layer_end_out : dlv_layer_end; // @[Reg.scala 20:19:@4502.4]
  assign dlv_sat_end = calc_layer_end_out & calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 210:42:@4544.4]
  assign _T_1369 = ~ dlv_sat_end; // @[NV_soDLA_CACC_calculator_gate.scala 211:44:@4545.4]
  assign _T_1370 = calc_dlv_valid_out & _T_1369; // @[NV_soDLA_CACC_calculator_gate.scala 211:42:@4546.4]
  assign dlv_sat_clr = _T_1370 & dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_gate.scala 211:57:@4547.4]
  assign _GEN_15 = calc_dlv_valid_out ? dlv_sat_end : dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_0 = NV_soDLA_CACC_CALC_int8_gate_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3702.4]
  assign _GEN_16 = calc_dlv_valid_out ? calc_fout_sat_0 : dlv_sat_bit_d1_0; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_1 = NV_soDLA_CACC_CALC_int8_gate_1_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3715.4]
  assign _GEN_17 = calc_dlv_valid_out ? calc_fout_sat_1 : dlv_sat_bit_d1_1; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_2 = NV_soDLA_CACC_CALC_int8_gate_2_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3728.4]
  assign _GEN_18 = calc_dlv_valid_out ? calc_fout_sat_2 : dlv_sat_bit_d1_2; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_3 = NV_soDLA_CACC_CALC_int8_gate_3_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3741.4]
  assign _GEN_19 = calc_dlv_valid_out ? calc_fout_sat_3 : dlv_sat_bit_d1_3; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_4 = NV_soDLA_CACC_CALC_int8_gate_4_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3754.4]
  assign _GEN_20 = calc_dlv_valid_out ? calc_fout_sat_4 : dlv_sat_bit_d1_4; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_5 = NV_soDLA_CACC_CALC_int8_gate_5_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3767.4]
  assign _GEN_21 = calc_dlv_valid_out ? calc_fout_sat_5 : dlv_sat_bit_d1_5; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_6 = NV_soDLA_CACC_CALC_int8_gate_6_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3780.4]
  assign _GEN_22 = calc_dlv_valid_out ? calc_fout_sat_6 : dlv_sat_bit_d1_6; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_7 = NV_soDLA_CACC_CALC_int8_gate_7_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3793.4]
  assign _GEN_23 = calc_dlv_valid_out ? calc_fout_sat_7 : dlv_sat_bit_d1_7; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_8 = NV_soDLA_CACC_CALC_int8_gate_8_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3806.4]
  assign _GEN_24 = calc_dlv_valid_out ? calc_fout_sat_8 : dlv_sat_bit_d1_8; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_9 = NV_soDLA_CACC_CALC_int8_gate_9_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3819.4]
  assign _GEN_25 = calc_dlv_valid_out ? calc_fout_sat_9 : dlv_sat_bit_d1_9; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_10 = NV_soDLA_CACC_CALC_int8_gate_10_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3832.4]
  assign _GEN_26 = calc_dlv_valid_out ? calc_fout_sat_10 : dlv_sat_bit_d1_10; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_11 = NV_soDLA_CACC_CALC_int8_gate_11_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3845.4]
  assign _GEN_27 = calc_dlv_valid_out ? calc_fout_sat_11 : dlv_sat_bit_d1_11; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_12 = NV_soDLA_CACC_CALC_int8_gate_12_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3858.4]
  assign _GEN_28 = calc_dlv_valid_out ? calc_fout_sat_12 : dlv_sat_bit_d1_12; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_13 = NV_soDLA_CACC_CALC_int8_gate_13_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3871.4]
  assign _GEN_29 = calc_dlv_valid_out ? calc_fout_sat_13 : dlv_sat_bit_d1_13; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_14 = NV_soDLA_CACC_CALC_int8_gate_14_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3884.4]
  assign _GEN_30 = calc_dlv_valid_out ? calc_fout_sat_14 : dlv_sat_bit_d1_14; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_15 = NV_soDLA_CACC_CALC_int8_gate_15_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3897.4]
  assign _GEN_31 = calc_dlv_valid_out ? calc_fout_sat_15 : dlv_sat_bit_d1_15; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_16 = NV_soDLA_CACC_CALC_int8_gate_16_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3910.4]
  assign _GEN_32 = calc_dlv_valid_out ? calc_fout_sat_16 : dlv_sat_bit_d1_16; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_17 = NV_soDLA_CACC_CALC_int8_gate_17_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3923.4]
  assign _GEN_33 = calc_dlv_valid_out ? calc_fout_sat_17 : dlv_sat_bit_d1_17; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_18 = NV_soDLA_CACC_CALC_int8_gate_18_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3936.4]
  assign _GEN_34 = calc_dlv_valid_out ? calc_fout_sat_18 : dlv_sat_bit_d1_18; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_19 = NV_soDLA_CACC_CALC_int8_gate_19_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3949.4]
  assign _GEN_35 = calc_dlv_valid_out ? calc_fout_sat_19 : dlv_sat_bit_d1_19; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_20 = NV_soDLA_CACC_CALC_int8_gate_20_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3962.4]
  assign _GEN_36 = calc_dlv_valid_out ? calc_fout_sat_20 : dlv_sat_bit_d1_20; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_21 = NV_soDLA_CACC_CALC_int8_gate_21_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3975.4]
  assign _GEN_37 = calc_dlv_valid_out ? calc_fout_sat_21 : dlv_sat_bit_d1_21; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_22 = NV_soDLA_CACC_CALC_int8_gate_22_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3988.4]
  assign _GEN_38 = calc_dlv_valid_out ? calc_fout_sat_22 : dlv_sat_bit_d1_22; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_23 = NV_soDLA_CACC_CALC_int8_gate_23_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4001.4]
  assign _GEN_39 = calc_dlv_valid_out ? calc_fout_sat_23 : dlv_sat_bit_d1_23; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_24 = NV_soDLA_CACC_CALC_int8_gate_24_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4014.4]
  assign _GEN_40 = calc_dlv_valid_out ? calc_fout_sat_24 : dlv_sat_bit_d1_24; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_25 = NV_soDLA_CACC_CALC_int8_gate_25_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4027.4]
  assign _GEN_41 = calc_dlv_valid_out ? calc_fout_sat_25 : dlv_sat_bit_d1_25; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_26 = NV_soDLA_CACC_CALC_int8_gate_26_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4040.4]
  assign _GEN_42 = calc_dlv_valid_out ? calc_fout_sat_26 : dlv_sat_bit_d1_26; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_27 = NV_soDLA_CACC_CALC_int8_gate_27_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4053.4]
  assign _GEN_43 = calc_dlv_valid_out ? calc_fout_sat_27 : dlv_sat_bit_d1_27; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_28 = NV_soDLA_CACC_CALC_int8_gate_28_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4066.4]
  assign _GEN_44 = calc_dlv_valid_out ? calc_fout_sat_28 : dlv_sat_bit_d1_28; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_29 = NV_soDLA_CACC_CALC_int8_gate_29_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4079.4]
  assign _GEN_45 = calc_dlv_valid_out ? calc_fout_sat_29 : dlv_sat_bit_d1_29; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_30 = NV_soDLA_CACC_CALC_int8_gate_30_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4092.4]
  assign _GEN_46 = calc_dlv_valid_out ? calc_fout_sat_30 : dlv_sat_bit_d1_30; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_31 = NV_soDLA_CACC_CALC_int8_gate_31_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4105.4]
  assign _GEN_47 = calc_dlv_valid_out ? calc_fout_sat_31 : dlv_sat_bit_d1_31; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign _T_1409 = dlv_sat_bit_d1_0 + dlv_sat_bit_d1_1; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4618.4]
  assign _GEN_49 = {{1'd0}, dlv_sat_bit_d1_2}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4619.4]
  assign _T_1410 = _T_1409 + _GEN_49; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4619.4]
  assign _GEN_50 = {{2'd0}, dlv_sat_bit_d1_3}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4620.4]
  assign _T_1411 = _T_1410 + _GEN_50; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4620.4]
  assign _GEN_51 = {{3'd0}, dlv_sat_bit_d1_4}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4621.4]
  assign _T_1412 = _T_1411 + _GEN_51; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4621.4]
  assign _GEN_52 = {{4'd0}, dlv_sat_bit_d1_5}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4622.4]
  assign _T_1413 = _T_1412 + _GEN_52; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4622.4]
  assign _GEN_53 = {{5'd0}, dlv_sat_bit_d1_6}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4623.4]
  assign _T_1414 = _T_1413 + _GEN_53; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4623.4]
  assign _GEN_54 = {{6'd0}, dlv_sat_bit_d1_7}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4624.4]
  assign _T_1415 = _T_1414 + _GEN_54; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4624.4]
  assign _GEN_55 = {{7'd0}, dlv_sat_bit_d1_8}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4625.4]
  assign _T_1416 = _T_1415 + _GEN_55; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4625.4]
  assign _GEN_56 = {{8'd0}, dlv_sat_bit_d1_9}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4626.4]
  assign _T_1417 = _T_1416 + _GEN_56; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4626.4]
  assign _GEN_57 = {{9'd0}, dlv_sat_bit_d1_10}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4627.4]
  assign _T_1418 = _T_1417 + _GEN_57; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4627.4]
  assign _GEN_58 = {{10'd0}, dlv_sat_bit_d1_11}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4628.4]
  assign _T_1419 = _T_1418 + _GEN_58; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4628.4]
  assign _GEN_59 = {{11'd0}, dlv_sat_bit_d1_12}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4629.4]
  assign _T_1420 = _T_1419 + _GEN_59; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4629.4]
  assign _GEN_60 = {{12'd0}, dlv_sat_bit_d1_13}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4630.4]
  assign _T_1421 = _T_1420 + _GEN_60; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4630.4]
  assign _GEN_61 = {{13'd0}, dlv_sat_bit_d1_14}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4631.4]
  assign _T_1422 = _T_1421 + _GEN_61; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4631.4]
  assign _GEN_62 = {{14'd0}, dlv_sat_bit_d1_15}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4632.4]
  assign _T_1423 = _T_1422 + _GEN_62; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4632.4]
  assign _GEN_63 = {{15'd0}, dlv_sat_bit_d1_16}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4633.4]
  assign _T_1424 = _T_1423 + _GEN_63; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4633.4]
  assign _GEN_64 = {{16'd0}, dlv_sat_bit_d1_17}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4634.4]
  assign _T_1425 = _T_1424 + _GEN_64; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4634.4]
  assign _GEN_65 = {{17'd0}, dlv_sat_bit_d1_18}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4635.4]
  assign _T_1426 = _T_1425 + _GEN_65; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4635.4]
  assign _GEN_66 = {{18'd0}, dlv_sat_bit_d1_19}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4636.4]
  assign _T_1427 = _T_1426 + _GEN_66; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4636.4]
  assign _GEN_67 = {{19'd0}, dlv_sat_bit_d1_20}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4637.4]
  assign _T_1428 = _T_1427 + _GEN_67; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4637.4]
  assign _GEN_68 = {{20'd0}, dlv_sat_bit_d1_21}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4638.4]
  assign _T_1429 = _T_1428 + _GEN_68; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4638.4]
  assign _GEN_69 = {{21'd0}, dlv_sat_bit_d1_22}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4639.4]
  assign _T_1430 = _T_1429 + _GEN_69; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4639.4]
  assign _GEN_70 = {{22'd0}, dlv_sat_bit_d1_23}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4640.4]
  assign _T_1431 = _T_1430 + _GEN_70; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4640.4]
  assign _GEN_71 = {{23'd0}, dlv_sat_bit_d1_24}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4641.4]
  assign _T_1432 = _T_1431 + _GEN_71; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4641.4]
  assign _GEN_72 = {{24'd0}, dlv_sat_bit_d1_25}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4642.4]
  assign _T_1433 = _T_1432 + _GEN_72; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4642.4]
  assign _GEN_73 = {{25'd0}, dlv_sat_bit_d1_26}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4643.4]
  assign _T_1434 = _T_1433 + _GEN_73; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4643.4]
  assign _GEN_74 = {{26'd0}, dlv_sat_bit_d1_27}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4644.4]
  assign _T_1435 = _T_1434 + _GEN_74; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4644.4]
  assign _GEN_75 = {{27'd0}, dlv_sat_bit_d1_28}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4645.4]
  assign _T_1436 = _T_1435 + _GEN_75; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4645.4]
  assign _GEN_76 = {{28'd0}, dlv_sat_bit_d1_29}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4646.4]
  assign _T_1437 = _T_1436 + _GEN_76; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4646.4]
  assign _GEN_77 = {{29'd0}, dlv_sat_bit_d1_30}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4647.4]
  assign _T_1438 = _T_1437 + _GEN_77; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4647.4]
  assign _GEN_78 = {{30'd0}, dlv_sat_bit_d1_31}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4648.4]
  assign sat_sum = _T_1438 + _GEN_78; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4648.4]
  assign _T_1441 = sat_count + sat_sum; // @[NV_soDLA_CACC_calculator_gate.scala 222:36:@4650.4]
  assign sat_count_inc = _T_1441[31:0]; // @[NV_soDLA_CACC_calculator_gate.scala 222:47:@4651.4]
  assign sat_carry = _T_1441[32]; // @[NV_soDLA_CACC_calculator_gate.scala 223:43:@4653.4]
  assign _T_1448 = sat_carry ? 32'hffffffff : sat_count_inc; // @[NV_soDLA_CACC_calculator_gate.scala 225:26:@4655.4]
  assign sat_count_w = dlv_sat_clr_d1 ? sat_sum : _T_1448; // @[NV_soDLA_CACC_calculator_gate.scala 224:26:@4656.4]
  assign _T_1450 = sat_sum != 32'h0; // @[NV_soDLA_CACC_calculator_gate.scala 226:49:@4657.4]
  assign _T_1451 = _T_1450 | dlv_sat_clr_d1; // @[NV_soDLA_CACC_calculator_gate.scala 226:54:@4658.4]
  assign sat_reg_en = dlv_sat_vld_d1 & _T_1451; // @[NV_soDLA_CACC_calculator_gate.scala 226:37:@4659.4]
  assign _GEN_48 = sat_reg_en ? sat_count_w : sat_count; // @[NV_soDLA_CACC_calculator_gate.scala 227:21:@4660.4]
  assign abuf_wr_en = _T_1044; // @[NV_soDLA_CACC_calculator_gate.scala 191:27:@4413.4]
  assign abuf_wr_addr = _T_1047; // @[NV_soDLA_CACC_calculator_gate.scala 192:26:@4418.4]
  assign abuf_wr_data = _T_1080; // @[NV_soDLA_CACC_calculator_gate.scala 193:21:@4454.4]
  assign dlv_valid = _T_1116; // @[NV_soDLA_CACC_calculator_gate.scala 197:18:@4493.4]
  assign dlv_mask = _T_1119; // @[NV_soDLA_CACC_calculator_gate.scala 198:17:@4496.4]
  assign dlv_data = _T_1113; // @[NV_soDLA_CACC_calculator_gate.scala 196:17:@4490.4]
  assign dlv_pd = {dlv_layer_end,dlv_stripe_end}; // @[NV_soDLA_CACC_calculator_gate.scala 201:15:@4506.4]
  assign dp2reg_sat_count = sat_count; // @[NV_soDLA_CACC_calculator_gate.scala 231:25:@4663.4]
  assign NV_soDLA_CACC_CALC_int8_gate_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3693.4]
  assign NV_soDLA_CACC_CALC_int8_gate_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3694.4]
  assign NV_soDLA_CACC_CALC_int8_gate_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3695.4]
  assign NV_soDLA_CACC_CALC_int8_gate_in_data = mac_a2accu_data_0; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3696.4]
  assign NV_soDLA_CACC_CALC_int8_gate_in_op = abuf_rd_data[33:0]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3697.4]
  assign NV_soDLA_CACC_CALC_int8_gate_in_op_valid = calc_in_mask_0 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3698.4]
  assign NV_soDLA_CACC_CALC_int8_gate_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3699.4]
  assign NV_soDLA_CACC_CALC_int8_gate_in_valid = mac_a2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3700.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3706.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3707.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3708.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_in_data = mac_a2accu_data_1; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3709.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_in_op = abuf_rd_data[67:34]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3710.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_in_op_valid = calc_in_mask_1 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3711.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3712.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_in_valid = mac_a2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3713.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3719.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3720.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3721.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_in_data = mac_a2accu_data_2; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3722.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_in_op = abuf_rd_data[101:68]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3723.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_in_op_valid = calc_in_mask_2 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3724.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3725.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_in_valid = mac_a2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3726.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3732.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3733.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3734.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_in_data = mac_a2accu_data_3; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3735.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_in_op = abuf_rd_data[135:102]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3736.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_in_op_valid = calc_in_mask_3 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3737.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3738.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_in_valid = mac_a2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3739.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3745.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3746.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3747.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_in_data = mac_a2accu_data_4; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3748.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_in_op = abuf_rd_data[169:136]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3749.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_in_op_valid = calc_in_mask_4 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3750.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3751.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_in_valid = mac_a2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3752.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3758.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3759.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3760.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_in_data = mac_a2accu_data_5; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3761.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_in_op = abuf_rd_data[203:170]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3762.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_in_op_valid = calc_in_mask_5 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3763.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3764.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_in_valid = mac_a2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3765.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3771.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3772.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3773.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_in_data = mac_a2accu_data_6; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3774.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_in_op = abuf_rd_data[237:204]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3775.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_in_op_valid = calc_in_mask_6 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3776.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3777.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_in_valid = mac_a2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3778.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3784.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3785.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3786.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_in_data = mac_a2accu_data_7; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3787.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_in_op = abuf_rd_data[271:238]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3788.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_in_op_valid = calc_in_mask_7 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3789.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3790.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_in_valid = mac_a2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3791.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3797.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3798.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3799.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_in_data = mac_a2accu_data_8; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3800.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_in_op = abuf_rd_data[305:272]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3801.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_in_op_valid = calc_in_mask_8 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3802.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3803.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_in_valid = mac_a2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3804.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3810.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3811.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3812.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_in_data = mac_a2accu_data_9; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3813.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_in_op = abuf_rd_data[339:306]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3814.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_in_op_valid = calc_in_mask_9 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3815.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3816.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_in_valid = mac_a2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3817.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3823.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3824.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3825.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_in_data = mac_a2accu_data_10; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3826.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_in_op = abuf_rd_data[373:340]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3827.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_in_op_valid = calc_in_mask_10 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3828.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3829.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_in_valid = mac_a2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3830.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3836.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3837.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3838.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_in_data = mac_a2accu_data_11; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3839.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_in_op = abuf_rd_data[407:374]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3840.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_in_op_valid = calc_in_mask_11 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3841.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3842.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_in_valid = mac_a2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3843.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3849.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3850.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3851.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_in_data = mac_a2accu_data_12; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3852.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_in_op = abuf_rd_data[441:408]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3853.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_in_op_valid = calc_in_mask_12 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3854.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3855.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_in_valid = mac_a2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3856.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3862.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3863.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3864.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_in_data = mac_a2accu_data_13; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3865.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_in_op = abuf_rd_data[475:442]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3866.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_in_op_valid = calc_in_mask_13 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3867.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3868.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_in_valid = mac_a2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3869.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3875.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3876.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3877.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_in_data = mac_a2accu_data_14; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3878.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_in_op = abuf_rd_data[509:476]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3879.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_in_op_valid = calc_in_mask_14 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3880.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3881.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_in_valid = mac_a2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3882.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3888.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3889.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3890.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_in_data = mac_a2accu_data_15; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3891.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_in_op = abuf_rd_data[543:510]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3892.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_in_op_valid = calc_in_mask_15 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3893.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3894.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_in_valid = mac_a2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3895.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3901.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3902.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3903.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_in_data = mac_b2accu_data_0; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3904.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_in_op = abuf_rd_data[577:544]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3905.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_in_op_valid = calc_in_mask_16 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3906.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3907.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_in_valid = mac_b2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3908.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3914.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3915.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3916.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_in_data = mac_b2accu_data_1; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3917.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_in_op = abuf_rd_data[611:578]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3918.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_in_op_valid = calc_in_mask_17 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3919.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3920.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_in_valid = mac_b2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3921.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3927.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3928.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3929.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_in_data = mac_b2accu_data_2; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3930.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_in_op = abuf_rd_data[645:612]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3931.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_in_op_valid = calc_in_mask_18 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3932.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3933.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_in_valid = mac_b2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3934.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3940.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3941.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3942.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_in_data = mac_b2accu_data_3; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3943.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_in_op = abuf_rd_data[679:646]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3944.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_in_op_valid = calc_in_mask_19 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3945.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3946.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_in_valid = mac_b2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3947.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3953.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3954.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3955.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_in_data = mac_b2accu_data_4; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3956.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_in_op = abuf_rd_data[713:680]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3957.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_in_op_valid = calc_in_mask_20 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3958.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3959.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_in_valid = mac_b2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3960.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3966.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3967.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3968.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_in_data = mac_b2accu_data_5; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3969.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_in_op = abuf_rd_data[747:714]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3970.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_in_op_valid = calc_in_mask_21 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3971.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3972.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_in_valid = mac_b2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3973.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3979.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3980.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3981.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_in_data = mac_b2accu_data_6; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3982.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_in_op = abuf_rd_data[781:748]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3983.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_in_op_valid = calc_in_mask_22 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3984.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3985.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_in_valid = mac_b2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3986.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3992.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3993.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3994.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_in_data = mac_b2accu_data_7; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3995.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_in_op = abuf_rd_data[815:782]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3996.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_in_op_valid = calc_in_mask_23 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3997.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3998.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_in_valid = mac_b2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3999.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4005.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4006.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4007.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_in_data = mac_b2accu_data_8; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4008.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_in_op = abuf_rd_data[849:816]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4009.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_in_op_valid = calc_in_mask_24 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4010.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4011.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_in_valid = mac_b2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4012.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4018.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4019.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4020.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_in_data = mac_b2accu_data_9; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4021.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_in_op = abuf_rd_data[883:850]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4022.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_in_op_valid = calc_in_mask_25 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4023.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4024.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_in_valid = mac_b2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4025.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4031.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4032.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4033.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_in_data = mac_b2accu_data_10; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4034.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_in_op = abuf_rd_data[917:884]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4035.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_in_op_valid = calc_in_mask_26 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4036.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4037.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_in_valid = mac_b2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4038.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4044.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4045.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4046.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_in_data = mac_b2accu_data_11; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4047.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_in_op = abuf_rd_data[951:918]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4048.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_in_op_valid = calc_in_mask_27 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4049.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4050.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_in_valid = mac_b2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4051.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4057.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4058.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4059.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_in_data = mac_b2accu_data_12; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4060.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_in_op = abuf_rd_data[985:952]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4061.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_in_op_valid = calc_in_mask_28 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4062.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4063.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_in_valid = mac_b2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4064.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4070.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4071.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4072.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_in_data = mac_b2accu_data_13; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4073.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_in_op = abuf_rd_data[1019:986]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4074.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_in_op_valid = calc_in_mask_29 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4075.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4076.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_in_valid = mac_b2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4077.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4083.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4084.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4085.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_in_data = mac_b2accu_data_14; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4086.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_in_op = abuf_rd_data[1053:1020]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4087.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_in_op_valid = calc_in_mask_30 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4088.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4089.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_in_valid = mac_b2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4090.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_nvdla_core_clk = nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4096.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_nvdla_core_rstn = nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4097.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_cfg_truncate = cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4098.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_in_data = mac_b2accu_data_15; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4099.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_in_op = abuf_rd_data[1087:1054]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4100.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_in_op_valid = calc_in_mask_31 & accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4101.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4102.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_in_valid = mac_b2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4103.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  accu_ctrl_pd_d1 = _RAND_0[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_204 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_206 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  calc_valid = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_610 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_617 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  calc_wr_en_out = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_624 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  calc_addr_out = _RAND_8[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_631 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  calc_dlv_valid_out = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_638 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  calc_stripe_end_out = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_645 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  calc_layer_end_out = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1044 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1047 = _RAND_16[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {34{`RANDOM}};
  _T_1080 = _RAND_17[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {32{`RANDOM}};
  _T_1113 = _RAND_18[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_1116 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_1119 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  dlv_stripe_end = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  dlv_layer_end = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  dlv_sat_vld_d1 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  dlv_sat_end_d1 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  dlv_sat_bit_d1_0 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  dlv_sat_bit_d1_1 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  dlv_sat_bit_d1_2 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  dlv_sat_bit_d1_3 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  dlv_sat_bit_d1_4 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  dlv_sat_bit_d1_5 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  dlv_sat_bit_d1_6 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  dlv_sat_bit_d1_7 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  dlv_sat_bit_d1_8 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  dlv_sat_bit_d1_9 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  dlv_sat_bit_d1_10 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  dlv_sat_bit_d1_11 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  dlv_sat_bit_d1_12 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  dlv_sat_bit_d1_13 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  dlv_sat_bit_d1_14 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  dlv_sat_bit_d1_15 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  dlv_sat_bit_d1_16 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  dlv_sat_bit_d1_17 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  dlv_sat_bit_d1_18 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  dlv_sat_bit_d1_19 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  dlv_sat_bit_d1_20 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  dlv_sat_bit_d1_21 = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  dlv_sat_bit_d1_22 = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  dlv_sat_bit_d1_23 = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  dlv_sat_bit_d1_24 = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  dlv_sat_bit_d1_25 = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  dlv_sat_bit_d1_26 = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  dlv_sat_bit_d1_27 = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  dlv_sat_bit_d1_28 = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  dlv_sat_bit_d1_29 = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  dlv_sat_bit_d1_30 = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  dlv_sat_bit_d1_31 = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  dlv_sat_clr_d1 = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  sat_count = _RAND_58[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (_T_130) begin
      accu_ctrl_pd_d1 <= 13'h0;
    end else begin
      if (accu_ctrl_valid) begin
        accu_ctrl_pd_d1 <= accu_ctrl_pd;
      end
    end
    _T_204 <= mac_b2accu_pvld | mac_a2accu_pvld;
    _T_206 <= _T_204;
    calc_valid <= _T_206;
    if (_T_130) begin
      _T_610 <= 1'h0;
    end else begin
      _T_610 <= calc_valid;
    end
    if (_T_130) begin
      _T_617 <= 1'h0;
    end else begin
      _T_617 <= calc_wr_en;
    end
    if (_T_130) begin
      calc_wr_en_out <= 1'h0;
    end else begin
      calc_wr_en_out <= _T_617;
    end
    if (_T_130) begin
      _T_624 <= 6'h0;
    end else begin
      if (calc_valid) begin
        _T_624 <= calc_addr;
      end
    end
    if (_T_130) begin
      calc_addr_out <= 6'h0;
    end else begin
      if (_T_610) begin
        calc_addr_out <= _T_624;
      end
    end
    if (_T_130) begin
      _T_631 <= 1'h0;
    end else begin
      _T_631 <= calc_dlv_valid;
    end
    if (_T_130) begin
      calc_dlv_valid_out <= 1'h0;
    end else begin
      calc_dlv_valid_out <= _T_631;
    end
    if (_T_130) begin
      _T_638 <= 1'h0;
    end else begin
      if (calc_dlv_valid) begin
        _T_638 <= calc_stripe_end;
      end
    end
    if (_T_130) begin
      calc_stripe_end_out <= 1'h0;
    end else begin
      if (_T_631) begin
        calc_stripe_end_out <= _T_638;
      end
    end
    if (_T_130) begin
      _T_645 <= 1'h0;
    end else begin
      if (calc_dlv_valid) begin
        _T_645 <= calc_layer_end;
      end
    end
    if (_T_130) begin
      calc_layer_end_out <= 1'h0;
    end else begin
      if (_T_631) begin
        calc_layer_end_out <= _T_645;
      end
    end
    if (_T_130) begin
      _T_1044 <= 1'h0;
    end else begin
      _T_1044 <= calc_wr_en_out;
    end
    if (_T_130) begin
      _T_1047 <= 6'h0;
    end else begin
      if (calc_wr_en_out) begin
        _T_1047 <= calc_addr_out;
      end
    end
    if (calc_wr_en_out) begin
      _T_1080 <= _T_1078;
    end
    if (calc_dlv_valid_out) begin
      _T_1113 <= _T_1111;
    end
    if (_T_130) begin
      _T_1116 <= 1'h0;
    end else begin
      _T_1116 <= calc_dlv_valid_out;
    end
    if (_T_130) begin
      _T_1119 <= 1'h0;
    end else begin
      _T_1119 <= calc_dlv_valid_out;
    end
    if (_T_130) begin
      dlv_stripe_end <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_stripe_end <= calc_stripe_end_out;
      end
    end
    if (_T_130) begin
      dlv_layer_end <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_layer_end <= calc_layer_end_out;
      end
    end
    if (_T_130) begin
      dlv_sat_vld_d1 <= 1'h0;
    end else begin
      dlv_sat_vld_d1 <= calc_dlv_valid_out;
    end
    if (_T_130) begin
      dlv_sat_end_d1 <= 1'h1;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_end_d1 <= dlv_sat_end;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_0 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_0 <= calc_fout_sat_0;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_1 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_1 <= calc_fout_sat_1;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_2 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_2 <= calc_fout_sat_2;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_3 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_3 <= calc_fout_sat_3;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_4 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_4 <= calc_fout_sat_4;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_5 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_5 <= calc_fout_sat_5;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_6 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_6 <= calc_fout_sat_6;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_7 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_7 <= calc_fout_sat_7;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_8 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_8 <= calc_fout_sat_8;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_9 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_9 <= calc_fout_sat_9;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_10 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_10 <= calc_fout_sat_10;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_11 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_11 <= calc_fout_sat_11;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_12 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_12 <= calc_fout_sat_12;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_13 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_13 <= calc_fout_sat_13;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_14 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_14 <= calc_fout_sat_14;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_15 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_15 <= calc_fout_sat_15;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_16 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_16 <= calc_fout_sat_16;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_17 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_17 <= calc_fout_sat_17;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_18 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_18 <= calc_fout_sat_18;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_19 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_19 <= calc_fout_sat_19;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_20 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_20 <= calc_fout_sat_20;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_21 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_21 <= calc_fout_sat_21;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_22 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_22 <= calc_fout_sat_22;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_23 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_23 <= calc_fout_sat_23;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_24 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_24 <= calc_fout_sat_24;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_25 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_25 <= calc_fout_sat_25;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_26 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_26 <= calc_fout_sat_26;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_27 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_27 <= calc_fout_sat_27;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_28 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_28 <= calc_fout_sat_28;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_29 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_29 <= calc_fout_sat_29;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_30 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_30 <= calc_fout_sat_30;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_31 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_31 <= calc_fout_sat_31;
      end
    end
    if (_T_130) begin
      dlv_sat_clr_d1 <= 1'h0;
    end else begin
      dlv_sat_clr_d1 <= dlv_sat_clr;
    end
    if (_T_130) begin
      sat_count <= 32'h0;
    end else begin
      if (sat_reg_en) begin
        if (dlv_sat_clr_d1) begin
          sat_count <= sat_sum;
        end else begin
          if (sat_carry) begin
            sat_count <= 32'hffffffff;
          end else begin
            sat_count <= sat_count_inc;
          end
        end
      end
    end
  end
endmodule


// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CACC_calculator.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CACC.h
module NV_NVDLA_CACC_calculator (
   nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,abuf_rd_data //|< i
  ,accu_ctrl_pd //|< i
  ,accu_ctrl_ram_valid //|< i
  ,accu_ctrl_valid //|< i
  ,cfg_in_en_mask //|< i
  ,cfg_is_wg //|< i
  ,cfg_truncate //|< i
//: for(my $i=0; $i<32/2 ; $i++){
//: print qq(
//: ,mac_a2accu_data${i} //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,mac_a2accu_data0 //|< i 
,mac_a2accu_data1 //|< i 
,mac_a2accu_data2 //|< i 
,mac_a2accu_data3 //|< i 
,mac_a2accu_data4 //|< i 
,mac_a2accu_data5 //|< i 
,mac_a2accu_data6 //|< i 
,mac_a2accu_data7 //|< i 
,mac_a2accu_data8 //|< i 
,mac_a2accu_data9 //|< i 
,mac_a2accu_data10 //|< i 
,mac_a2accu_data11 //|< i 
,mac_a2accu_data12 //|< i 
,mac_a2accu_data13 //|< i 
,mac_a2accu_data14 //|< i 
,mac_a2accu_data15 //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,mac_a2accu_mask //|< i
  ,mac_a2accu_mode //|< i
  ,mac_a2accu_pvld //|< i
//: for(my $i=0; $i<32/2 ; $i++){
//: print qq(
//: ,mac_b2accu_data${i} //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,mac_b2accu_data0 //|< i 
,mac_b2accu_data1 //|< i 
,mac_b2accu_data2 //|< i 
,mac_b2accu_data3 //|< i 
,mac_b2accu_data4 //|< i 
,mac_b2accu_data5 //|< i 
,mac_b2accu_data6 //|< i 
,mac_b2accu_data7 //|< i 
,mac_b2accu_data8 //|< i 
,mac_b2accu_data9 //|< i 
,mac_b2accu_data10 //|< i 
,mac_b2accu_data11 //|< i 
,mac_b2accu_data12 //|< i 
,mac_b2accu_data13 //|< i 
,mac_b2accu_data14 //|< i 
,mac_b2accu_data15 //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,mac_b2accu_mask //|< i
  ,mac_b2accu_mode //|< i
  ,mac_b2accu_pvld //|< i
  ,nvdla_cell_clk //|< i
  ,abuf_wr_addr //|> o
  ,abuf_wr_data //|> o
  ,abuf_wr_en //|> o
  ,dlv_data //|> o
  ,dlv_mask //|> o
  ,dlv_pd //|> o
  ,dlv_valid //|> o
  ,dp2reg_sat_count //|> o
  );
input nvdla_cell_clk;
input nvdla_core_clk;
input nvdla_core_rstn;
input [34*32 -1:0] abuf_rd_data;
input [12:0] accu_ctrl_pd;
input accu_ctrl_ram_valid;
input accu_ctrl_valid;
input cfg_in_en_mask;
input cfg_is_wg;
input [4:0] cfg_truncate;
//: for(my $i=0; $i<32/2 ; $i++){
//: print qq(
//: input [22 -1:0] mac_a2accu_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [22 -1:0] mac_a2accu_data0; 
input [22 -1:0] mac_a2accu_data1; 
input [22 -1:0] mac_a2accu_data2; 
input [22 -1:0] mac_a2accu_data3; 
input [22 -1:0] mac_a2accu_data4; 
input [22 -1:0] mac_a2accu_data5; 
input [22 -1:0] mac_a2accu_data6; 
input [22 -1:0] mac_a2accu_data7; 
input [22 -1:0] mac_a2accu_data8; 
input [22 -1:0] mac_a2accu_data9; 
input [22 -1:0] mac_a2accu_data10; 
input [22 -1:0] mac_a2accu_data11; 
input [22 -1:0] mac_a2accu_data12; 
input [22 -1:0] mac_a2accu_data13; 
input [22 -1:0] mac_a2accu_data14; 
input [22 -1:0] mac_a2accu_data15; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
input [32/2-1:0] mac_a2accu_mask;
input mac_a2accu_mode;
input mac_a2accu_pvld;
//: for(my $i=0; $i<32/2 ; $i++){
//: print qq(
//: input [22 -1:0] mac_b2accu_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [22 -1:0] mac_b2accu_data0; 
input [22 -1:0] mac_b2accu_data1; 
input [22 -1:0] mac_b2accu_data2; 
input [22 -1:0] mac_b2accu_data3; 
input [22 -1:0] mac_b2accu_data4; 
input [22 -1:0] mac_b2accu_data5; 
input [22 -1:0] mac_b2accu_data6; 
input [22 -1:0] mac_b2accu_data7; 
input [22 -1:0] mac_b2accu_data8; 
input [22 -1:0] mac_b2accu_data9; 
input [22 -1:0] mac_b2accu_data10; 
input [22 -1:0] mac_b2accu_data11; 
input [22 -1:0] mac_b2accu_data12; 
input [22 -1:0] mac_b2accu_data13; 
input [22 -1:0] mac_b2accu_data14; 
input [22 -1:0] mac_b2accu_data15; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
input [32/2-1:0] mac_b2accu_mask;
input mac_b2accu_mode;
input mac_b2accu_pvld;
output [5 +1 -1:0] abuf_wr_addr;
output [34*32 -1:0] abuf_wr_data;
output abuf_wr_en;
output [32*32 -1:0] dlv_data;
output dlv_mask;
output [1:0] dlv_pd;
output dlv_valid;
output [31:0] dp2reg_sat_count;
// spyglass disable_block NoWidthInBasedNum-ML
// spyglass disable_block STARC-2.10.1.6
// unpack abuffer read data
//: my $kk=34;
//: for(my $i=0; $i<32 ; $i++){
//: print qq(
//: wire [${kk}-1:0] abuf_in_data_${i} = abuf_rd_data[($i+1)*${kk}-1:$i*${kk}]; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [34-1:0] abuf_in_data_0 = abuf_rd_data[(0+1)*34-1:0*34]; 
wire [34-1:0] abuf_in_data_1 = abuf_rd_data[(1+1)*34-1:1*34]; 
wire [34-1:0] abuf_in_data_2 = abuf_rd_data[(2+1)*34-1:2*34]; 
wire [34-1:0] abuf_in_data_3 = abuf_rd_data[(3+1)*34-1:3*34]; 
wire [34-1:0] abuf_in_data_4 = abuf_rd_data[(4+1)*34-1:4*34]; 
wire [34-1:0] abuf_in_data_5 = abuf_rd_data[(5+1)*34-1:5*34]; 
wire [34-1:0] abuf_in_data_6 = abuf_rd_data[(6+1)*34-1:6*34]; 
wire [34-1:0] abuf_in_data_7 = abuf_rd_data[(7+1)*34-1:7*34]; 
wire [34-1:0] abuf_in_data_8 = abuf_rd_data[(8+1)*34-1:8*34]; 
wire [34-1:0] abuf_in_data_9 = abuf_rd_data[(9+1)*34-1:9*34]; 
wire [34-1:0] abuf_in_data_10 = abuf_rd_data[(10+1)*34-1:10*34]; 
wire [34-1:0] abuf_in_data_11 = abuf_rd_data[(11+1)*34-1:11*34]; 
wire [34-1:0] abuf_in_data_12 = abuf_rd_data[(12+1)*34-1:12*34]; 
wire [34-1:0] abuf_in_data_13 = abuf_rd_data[(13+1)*34-1:13*34]; 
wire [34-1:0] abuf_in_data_14 = abuf_rd_data[(14+1)*34-1:14*34]; 
wire [34-1:0] abuf_in_data_15 = abuf_rd_data[(15+1)*34-1:15*34]; 
wire [34-1:0] abuf_in_data_16 = abuf_rd_data[(16+1)*34-1:16*34]; 
wire [34-1:0] abuf_in_data_17 = abuf_rd_data[(17+1)*34-1:17*34]; 
wire [34-1:0] abuf_in_data_18 = abuf_rd_data[(18+1)*34-1:18*34]; 
wire [34-1:0] abuf_in_data_19 = abuf_rd_data[(19+1)*34-1:19*34]; 
wire [34-1:0] abuf_in_data_20 = abuf_rd_data[(20+1)*34-1:20*34]; 
wire [34-1:0] abuf_in_data_21 = abuf_rd_data[(21+1)*34-1:21*34]; 
wire [34-1:0] abuf_in_data_22 = abuf_rd_data[(22+1)*34-1:22*34]; 
wire [34-1:0] abuf_in_data_23 = abuf_rd_data[(23+1)*34-1:23*34]; 
wire [34-1:0] abuf_in_data_24 = abuf_rd_data[(24+1)*34-1:24*34]; 
wire [34-1:0] abuf_in_data_25 = abuf_rd_data[(25+1)*34-1:25*34]; 
wire [34-1:0] abuf_in_data_26 = abuf_rd_data[(26+1)*34-1:26*34]; 
wire [34-1:0] abuf_in_data_27 = abuf_rd_data[(27+1)*34-1:27*34]; 
wire [34-1:0] abuf_in_data_28 = abuf_rd_data[(28+1)*34-1:28*34]; 
wire [34-1:0] abuf_in_data_29 = abuf_rd_data[(29+1)*34-1:29*34]; 
wire [34-1:0] abuf_in_data_30 = abuf_rd_data[(30+1)*34-1:30*34]; 
wire [34-1:0] abuf_in_data_31 = abuf_rd_data[(31+1)*34-1:31*34]; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
//1T delay, the same T with data/mask
//: &eperl::flop("-wid 13 -q accu_ctrl_pd_d1 -en accu_ctrl_valid -d accu_ctrl_pd");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg [12:0] accu_ctrl_pd_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       accu_ctrl_pd_d1 <= 'b0;
   end else begin
       if ((accu_ctrl_valid) == 1'b1) begin
           accu_ctrl_pd_d1 <= accu_ctrl_pd;
       // VCS coverage off
       end else if ((accu_ctrl_valid) == 1'b0) begin
       end else begin
           accu_ctrl_pd_d1 <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire calc_valid_in = (mac_b2accu_pvld | mac_a2accu_pvld);
// spyglass disable_block STARC05-3.3.1.4b
//: &eperl::retime("-stage 3 -o calc_valid -i calc_valid_in");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  calc_valid_in_d1;
always @(posedge nvdla_core_clk) begin
        calc_valid_in_d1 <= calc_valid_in;
end

reg  calc_valid_in_d2;
always @(posedge nvdla_core_clk) begin
        calc_valid_in_d2 <= calc_valid_in_d1;
end

reg  calc_valid_in_d3;
always @(posedge nvdla_core_clk) begin
        calc_valid_in_d3 <= calc_valid_in_d2;
end

wire  calc_valid;
assign calc_valid = calc_valid_in_d3;


//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block STARC05-3.3.1.4b
// unpack pd form abuffer control
wire [5:0] calc_addr = accu_ctrl_pd_d1[5:0];
wire [2:0] calc_mode = accu_ctrl_pd_d1[8:6];
wire calc_stripe_end = accu_ctrl_pd_d1[9];
wire calc_channel_end = accu_ctrl_pd_d1[10];
wire calc_layer_end = accu_ctrl_pd_d1[11];
wire calc_dlv_elem_mask = accu_ctrl_pd_d1[12];
//: my $kk=22;
//: for(my $i = 0; $i < 32/2; $i ++) {
//: print "wire [${kk}-1:0] calc_elem_${i} = mac_a2accu_data${i}; \n";
//: }
//: for(my $i = 32/2; $i < 32; $i ++) {
//: my $j = $i - 32/2;
//: print "wire [${kk}-1:0] calc_elem_${i} = mac_b2accu_data${j}; \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
wire [22-1:0] calc_elem_0 = mac_a2accu_data0; 
wire [22-1:0] calc_elem_1 = mac_a2accu_data1; 
wire [22-1:0] calc_elem_2 = mac_a2accu_data2; 
wire [22-1:0] calc_elem_3 = mac_a2accu_data3; 
wire [22-1:0] calc_elem_4 = mac_a2accu_data4; 
wire [22-1:0] calc_elem_5 = mac_a2accu_data5; 
wire [22-1:0] calc_elem_6 = mac_a2accu_data6; 
wire [22-1:0] calc_elem_7 = mac_a2accu_data7; 
wire [22-1:0] calc_elem_8 = mac_a2accu_data8; 
wire [22-1:0] calc_elem_9 = mac_a2accu_data9; 
wire [22-1:0] calc_elem_10 = mac_a2accu_data10; 
wire [22-1:0] calc_elem_11 = mac_a2accu_data11; 
wire [22-1:0] calc_elem_12 = mac_a2accu_data12; 
wire [22-1:0] calc_elem_13 = mac_a2accu_data13; 
wire [22-1:0] calc_elem_14 = mac_a2accu_data14; 
wire [22-1:0] calc_elem_15 = mac_a2accu_data15; 
wire [22-1:0] calc_elem_16 = mac_b2accu_data0; 
wire [22-1:0] calc_elem_17 = mac_b2accu_data1; 
wire [22-1:0] calc_elem_18 = mac_b2accu_data2; 
wire [22-1:0] calc_elem_19 = mac_b2accu_data3; 
wire [22-1:0] calc_elem_20 = mac_b2accu_data4; 
wire [22-1:0] calc_elem_21 = mac_b2accu_data5; 
wire [22-1:0] calc_elem_22 = mac_b2accu_data6; 
wire [22-1:0] calc_elem_23 = mac_b2accu_data7; 
wire [22-1:0] calc_elem_24 = mac_b2accu_data8; 
wire [22-1:0] calc_elem_25 = mac_b2accu_data9; 
wire [22-1:0] calc_elem_26 = mac_b2accu_data10; 
wire [22-1:0] calc_elem_27 = mac_b2accu_data11; 
wire [22-1:0] calc_elem_28 = mac_b2accu_data12; 
wire [22-1:0] calc_elem_29 = mac_b2accu_data13; 
wire [22-1:0] calc_elem_30 = mac_b2accu_data14; 
wire [22-1:0] calc_elem_31 = mac_b2accu_data15; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [32 -1:0] calc_in_mask = {mac_b2accu_mask, mac_a2accu_mask};
wire [32 -1:0] calc_op_en = calc_in_mask & {32{cfg_in_en_mask}};
wire [32 -1:0] calc_op1_vld = calc_in_mask & {32{cfg_in_en_mask & accu_ctrl_ram_valid}};
wire calc_dlv_valid = calc_valid & calc_channel_end;
wire calc_wr_en = calc_valid & (~calc_channel_end);
//: my $hh= 22-22;
//: my $pp= 34;
//: my $bb= 22;
//: for(my $i = 0; $i <32; $i ++) {
//: if($hh == 0) {
//: print qq(
//: wire [21:0]calc_op0_${i} = {calc_elem_${i}};
//: wire [${pp}-1:0] calc_op1_${i} = abuf_in_data_${i};
//: );
//: }
//: elsif($hh > 0) {
//: print qq(
//: wire [21:0]calc_op0_${i} = {{${hh}{calc_elem_${i}[${bb}-1]}},calc_elem_${i}};
//: wire [${pp}-1:0] calc_op1_${i} = abuf_in_data_${i};
//: );
//: }
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [21:0]calc_op0_0 = {calc_elem_0};
wire [34-1:0] calc_op1_0 = abuf_in_data_0;

wire [21:0]calc_op0_1 = {calc_elem_1};
wire [34-1:0] calc_op1_1 = abuf_in_data_1;

wire [21:0]calc_op0_2 = {calc_elem_2};
wire [34-1:0] calc_op1_2 = abuf_in_data_2;

wire [21:0]calc_op0_3 = {calc_elem_3};
wire [34-1:0] calc_op1_3 = abuf_in_data_3;

wire [21:0]calc_op0_4 = {calc_elem_4};
wire [34-1:0] calc_op1_4 = abuf_in_data_4;

wire [21:0]calc_op0_5 = {calc_elem_5};
wire [34-1:0] calc_op1_5 = abuf_in_data_5;

wire [21:0]calc_op0_6 = {calc_elem_6};
wire [34-1:0] calc_op1_6 = abuf_in_data_6;

wire [21:0]calc_op0_7 = {calc_elem_7};
wire [34-1:0] calc_op1_7 = abuf_in_data_7;

wire [21:0]calc_op0_8 = {calc_elem_8};
wire [34-1:0] calc_op1_8 = abuf_in_data_8;

wire [21:0]calc_op0_9 = {calc_elem_9};
wire [34-1:0] calc_op1_9 = abuf_in_data_9;

wire [21:0]calc_op0_10 = {calc_elem_10};
wire [34-1:0] calc_op1_10 = abuf_in_data_10;

wire [21:0]calc_op0_11 = {calc_elem_11};
wire [34-1:0] calc_op1_11 = abuf_in_data_11;

wire [21:0]calc_op0_12 = {calc_elem_12};
wire [34-1:0] calc_op1_12 = abuf_in_data_12;

wire [21:0]calc_op0_13 = {calc_elem_13};
wire [34-1:0] calc_op1_13 = abuf_in_data_13;

wire [21:0]calc_op0_14 = {calc_elem_14};
wire [34-1:0] calc_op1_14 = abuf_in_data_14;

wire [21:0]calc_op0_15 = {calc_elem_15};
wire [34-1:0] calc_op1_15 = abuf_in_data_15;

wire [21:0]calc_op0_16 = {calc_elem_16};
wire [34-1:0] calc_op1_16 = abuf_in_data_16;

wire [21:0]calc_op0_17 = {calc_elem_17};
wire [34-1:0] calc_op1_17 = abuf_in_data_17;

wire [21:0]calc_op0_18 = {calc_elem_18};
wire [34-1:0] calc_op1_18 = abuf_in_data_18;

wire [21:0]calc_op0_19 = {calc_elem_19};
wire [34-1:0] calc_op1_19 = abuf_in_data_19;

wire [21:0]calc_op0_20 = {calc_elem_20};
wire [34-1:0] calc_op1_20 = abuf_in_data_20;

wire [21:0]calc_op0_21 = {calc_elem_21};
wire [34-1:0] calc_op1_21 = abuf_in_data_21;

wire [21:0]calc_op0_22 = {calc_elem_22};
wire [34-1:0] calc_op1_22 = abuf_in_data_22;

wire [21:0]calc_op0_23 = {calc_elem_23};
wire [34-1:0] calc_op1_23 = abuf_in_data_23;

wire [21:0]calc_op0_24 = {calc_elem_24};
wire [34-1:0] calc_op1_24 = abuf_in_data_24;

wire [21:0]calc_op0_25 = {calc_elem_25};
wire [34-1:0] calc_op1_25 = abuf_in_data_25;

wire [21:0]calc_op0_26 = {calc_elem_26};
wire [34-1:0] calc_op1_26 = abuf_in_data_26;

wire [21:0]calc_op0_27 = {calc_elem_27};
wire [34-1:0] calc_op1_27 = abuf_in_data_27;

wire [21:0]calc_op0_28 = {calc_elem_28};
wire [34-1:0] calc_op1_28 = abuf_in_data_28;

wire [21:0]calc_op0_29 = {calc_elem_29};
wire [34-1:0] calc_op1_29 = abuf_in_data_29;

wire [21:0]calc_op0_30 = {calc_elem_30};
wire [34-1:0] calc_op1_30 = abuf_in_data_30;

wire [21:0]calc_op0_31 = {calc_elem_31};
wire [34-1:0] calc_op1_31 = abuf_in_data_31;

//| eperl: generated_end (DO NOT EDIT ABOVE)
// instance int8 adders
wire [32 -1:0] calc_fout_sat;
wire [32 -1:0] calc_pout_vld;
wire [32 -1:0] calc_fout_vld;
//: for(my $i = 0; $i <32; $i ++) {
//: print qq(
//: wire [34 -1:0] calc_pout_${i}_sum;
//: wire [32 -1:0] calc_fout_${i}_sum;
//: )
//: }
//: for(my $i = 0; $i <32; $i ++) {
//: print qq(
//: NV_soDLA_CACC_CALC_int8_gate u_cell_int8_${i} (
//: .cfg_truncate (cfg_truncate) //|< w
//: ,.in_data (calc_op0_${i}) //|< r
//: ,.in_op (calc_op1_${i}) //|< r
//: ,.in_op_valid (calc_op1_vld[${i}]) //|< r
//: ,.in_sel (calc_dlv_valid) //|< r
//: ,.in_valid (calc_op_en[${i}]) //|< r
//: ,.out_final_data (calc_fout_${i}_sum) //|> w
//: ,.out_final_sat (calc_fout_sat[${i}]) //|> w
//: ,.out_final_valid (calc_fout_vld[${i}]) //|> w
//: ,.out_partial_data (calc_pout_${i}_sum) //|> w
//: ,.out_partial_valid (calc_pout_vld[${i}]) //|> w
//: ,.nvdla_core_clk (nvdla_cell_clk) //|< i
//: ,.nvdla_core_rstn (nvdla_core_rstn) //|< i
//: );
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [34 -1:0] calc_pout_0_sum;
wire [32 -1:0] calc_fout_0_sum;

wire [34 -1:0] calc_pout_1_sum;
wire [32 -1:0] calc_fout_1_sum;

wire [34 -1:0] calc_pout_2_sum;
wire [32 -1:0] calc_fout_2_sum;

wire [34 -1:0] calc_pout_3_sum;
wire [32 -1:0] calc_fout_3_sum;

wire [34 -1:0] calc_pout_4_sum;
wire [32 -1:0] calc_fout_4_sum;

wire [34 -1:0] calc_pout_5_sum;
wire [32 -1:0] calc_fout_5_sum;

wire [34 -1:0] calc_pout_6_sum;
wire [32 -1:0] calc_fout_6_sum;

wire [34 -1:0] calc_pout_7_sum;
wire [32 -1:0] calc_fout_7_sum;

wire [34 -1:0] calc_pout_8_sum;
wire [32 -1:0] calc_fout_8_sum;

wire [34 -1:0] calc_pout_9_sum;
wire [32 -1:0] calc_fout_9_sum;

wire [34 -1:0] calc_pout_10_sum;
wire [32 -1:0] calc_fout_10_sum;

wire [34 -1:0] calc_pout_11_sum;
wire [32 -1:0] calc_fout_11_sum;

wire [34 -1:0] calc_pout_12_sum;
wire [32 -1:0] calc_fout_12_sum;

wire [34 -1:0] calc_pout_13_sum;
wire [32 -1:0] calc_fout_13_sum;

wire [34 -1:0] calc_pout_14_sum;
wire [32 -1:0] calc_fout_14_sum;

wire [34 -1:0] calc_pout_15_sum;
wire [32 -1:0] calc_fout_15_sum;

wire [34 -1:0] calc_pout_16_sum;
wire [32 -1:0] calc_fout_16_sum;

wire [34 -1:0] calc_pout_17_sum;
wire [32 -1:0] calc_fout_17_sum;

wire [34 -1:0] calc_pout_18_sum;
wire [32 -1:0] calc_fout_18_sum;

wire [34 -1:0] calc_pout_19_sum;
wire [32 -1:0] calc_fout_19_sum;

wire [34 -1:0] calc_pout_20_sum;
wire [32 -1:0] calc_fout_20_sum;

wire [34 -1:0] calc_pout_21_sum;
wire [32 -1:0] calc_fout_21_sum;

wire [34 -1:0] calc_pout_22_sum;
wire [32 -1:0] calc_fout_22_sum;

wire [34 -1:0] calc_pout_23_sum;
wire [32 -1:0] calc_fout_23_sum;

wire [34 -1:0] calc_pout_24_sum;
wire [32 -1:0] calc_fout_24_sum;

wire [34 -1:0] calc_pout_25_sum;
wire [32 -1:0] calc_fout_25_sum;

wire [34 -1:0] calc_pout_26_sum;
wire [32 -1:0] calc_fout_26_sum;

wire [34 -1:0] calc_pout_27_sum;
wire [32 -1:0] calc_fout_27_sum;

wire [34 -1:0] calc_pout_28_sum;
wire [32 -1:0] calc_fout_28_sum;

wire [34 -1:0] calc_pout_29_sum;
wire [32 -1:0] calc_fout_29_sum;

wire [34 -1:0] calc_pout_30_sum;
wire [32 -1:0] calc_fout_30_sum;

wire [34 -1:0] calc_pout_31_sum;
wire [32 -1:0] calc_fout_31_sum;

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_0 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_0) //|< r
,.in_op (calc_op1_0) //|< r
,.in_op_valid (calc_op1_vld[0]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[0]) //|< r
,.out_final_data (calc_fout_0_sum) //|> w
,.out_final_sat (calc_fout_sat[0]) //|> w
,.out_final_valid (calc_fout_vld[0]) //|> w
,.out_partial_data (calc_pout_0_sum) //|> w
,.out_partial_valid (calc_pout_vld[0]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_1 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_1) //|< r
,.in_op (calc_op1_1) //|< r
,.in_op_valid (calc_op1_vld[1]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[1]) //|< r
,.out_final_data (calc_fout_1_sum) //|> w
,.out_final_sat (calc_fout_sat[1]) //|> w
,.out_final_valid (calc_fout_vld[1]) //|> w
,.out_partial_data (calc_pout_1_sum) //|> w
,.out_partial_valid (calc_pout_vld[1]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_2 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_2) //|< r
,.in_op (calc_op1_2) //|< r
,.in_op_valid (calc_op1_vld[2]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[2]) //|< r
,.out_final_data (calc_fout_2_sum) //|> w
,.out_final_sat (calc_fout_sat[2]) //|> w
,.out_final_valid (calc_fout_vld[2]) //|> w
,.out_partial_data (calc_pout_2_sum) //|> w
,.out_partial_valid (calc_pout_vld[2]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_3 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_3) //|< r
,.in_op (calc_op1_3) //|< r
,.in_op_valid (calc_op1_vld[3]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[3]) //|< r
,.out_final_data (calc_fout_3_sum) //|> w
,.out_final_sat (calc_fout_sat[3]) //|> w
,.out_final_valid (calc_fout_vld[3]) //|> w
,.out_partial_data (calc_pout_3_sum) //|> w
,.out_partial_valid (calc_pout_vld[3]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_4 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_4) //|< r
,.in_op (calc_op1_4) //|< r
,.in_op_valid (calc_op1_vld[4]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[4]) //|< r
,.out_final_data (calc_fout_4_sum) //|> w
,.out_final_sat (calc_fout_sat[4]) //|> w
,.out_final_valid (calc_fout_vld[4]) //|> w
,.out_partial_data (calc_pout_4_sum) //|> w
,.out_partial_valid (calc_pout_vld[4]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_5 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_5) //|< r
,.in_op (calc_op1_5) //|< r
,.in_op_valid (calc_op1_vld[5]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[5]) //|< r
,.out_final_data (calc_fout_5_sum) //|> w
,.out_final_sat (calc_fout_sat[5]) //|> w
,.out_final_valid (calc_fout_vld[5]) //|> w
,.out_partial_data (calc_pout_5_sum) //|> w
,.out_partial_valid (calc_pout_vld[5]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_6 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_6) //|< r
,.in_op (calc_op1_6) //|< r
,.in_op_valid (calc_op1_vld[6]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[6]) //|< r
,.out_final_data (calc_fout_6_sum) //|> w
,.out_final_sat (calc_fout_sat[6]) //|> w
,.out_final_valid (calc_fout_vld[6]) //|> w
,.out_partial_data (calc_pout_6_sum) //|> w
,.out_partial_valid (calc_pout_vld[6]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_7 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_7) //|< r
,.in_op (calc_op1_7) //|< r
,.in_op_valid (calc_op1_vld[7]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[7]) //|< r
,.out_final_data (calc_fout_7_sum) //|> w
,.out_final_sat (calc_fout_sat[7]) //|> w
,.out_final_valid (calc_fout_vld[7]) //|> w
,.out_partial_data (calc_pout_7_sum) //|> w
,.out_partial_valid (calc_pout_vld[7]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_8 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_8) //|< r
,.in_op (calc_op1_8) //|< r
,.in_op_valid (calc_op1_vld[8]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[8]) //|< r
,.out_final_data (calc_fout_8_sum) //|> w
,.out_final_sat (calc_fout_sat[8]) //|> w
,.out_final_valid (calc_fout_vld[8]) //|> w
,.out_partial_data (calc_pout_8_sum) //|> w
,.out_partial_valid (calc_pout_vld[8]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_9 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_9) //|< r
,.in_op (calc_op1_9) //|< r
,.in_op_valid (calc_op1_vld[9]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[9]) //|< r
,.out_final_data (calc_fout_9_sum) //|> w
,.out_final_sat (calc_fout_sat[9]) //|> w
,.out_final_valid (calc_fout_vld[9]) //|> w
,.out_partial_data (calc_pout_9_sum) //|> w
,.out_partial_valid (calc_pout_vld[9]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_10 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_10) //|< r
,.in_op (calc_op1_10) //|< r
,.in_op_valid (calc_op1_vld[10]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[10]) //|< r
,.out_final_data (calc_fout_10_sum) //|> w
,.out_final_sat (calc_fout_sat[10]) //|> w
,.out_final_valid (calc_fout_vld[10]) //|> w
,.out_partial_data (calc_pout_10_sum) //|> w
,.out_partial_valid (calc_pout_vld[10]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_11 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_11) //|< r
,.in_op (calc_op1_11) //|< r
,.in_op_valid (calc_op1_vld[11]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[11]) //|< r
,.out_final_data (calc_fout_11_sum) //|> w
,.out_final_sat (calc_fout_sat[11]) //|> w
,.out_final_valid (calc_fout_vld[11]) //|> w
,.out_partial_data (calc_pout_11_sum) //|> w
,.out_partial_valid (calc_pout_vld[11]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_12 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_12) //|< r
,.in_op (calc_op1_12) //|< r
,.in_op_valid (calc_op1_vld[12]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[12]) //|< r
,.out_final_data (calc_fout_12_sum) //|> w
,.out_final_sat (calc_fout_sat[12]) //|> w
,.out_final_valid (calc_fout_vld[12]) //|> w
,.out_partial_data (calc_pout_12_sum) //|> w
,.out_partial_valid (calc_pout_vld[12]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_13 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_13) //|< r
,.in_op (calc_op1_13) //|< r
,.in_op_valid (calc_op1_vld[13]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[13]) //|< r
,.out_final_data (calc_fout_13_sum) //|> w
,.out_final_sat (calc_fout_sat[13]) //|> w
,.out_final_valid (calc_fout_vld[13]) //|> w
,.out_partial_data (calc_pout_13_sum) //|> w
,.out_partial_valid (calc_pout_vld[13]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_14 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_14) //|< r
,.in_op (calc_op1_14) //|< r
,.in_op_valid (calc_op1_vld[14]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[14]) //|< r
,.out_final_data (calc_fout_14_sum) //|> w
,.out_final_sat (calc_fout_sat[14]) //|> w
,.out_final_valid (calc_fout_vld[14]) //|> w
,.out_partial_data (calc_pout_14_sum) //|> w
,.out_partial_valid (calc_pout_vld[14]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_15 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_15) //|< r
,.in_op (calc_op1_15) //|< r
,.in_op_valid (calc_op1_vld[15]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[15]) //|< r
,.out_final_data (calc_fout_15_sum) //|> w
,.out_final_sat (calc_fout_sat[15]) //|> w
,.out_final_valid (calc_fout_vld[15]) //|> w
,.out_partial_data (calc_pout_15_sum) //|> w
,.out_partial_valid (calc_pout_vld[15]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_16 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_16) //|< r
,.in_op (calc_op1_16) //|< r
,.in_op_valid (calc_op1_vld[16]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[16]) //|< r
,.out_final_data (calc_fout_16_sum) //|> w
,.out_final_sat (calc_fout_sat[16]) //|> w
,.out_final_valid (calc_fout_vld[16]) //|> w
,.out_partial_data (calc_pout_16_sum) //|> w
,.out_partial_valid (calc_pout_vld[16]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_17 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_17) //|< r
,.in_op (calc_op1_17) //|< r
,.in_op_valid (calc_op1_vld[17]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[17]) //|< r
,.out_final_data (calc_fout_17_sum) //|> w
,.out_final_sat (calc_fout_sat[17]) //|> w
,.out_final_valid (calc_fout_vld[17]) //|> w
,.out_partial_data (calc_pout_17_sum) //|> w
,.out_partial_valid (calc_pout_vld[17]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_18 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_18) //|< r
,.in_op (calc_op1_18) //|< r
,.in_op_valid (calc_op1_vld[18]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[18]) //|< r
,.out_final_data (calc_fout_18_sum) //|> w
,.out_final_sat (calc_fout_sat[18]) //|> w
,.out_final_valid (calc_fout_vld[18]) //|> w
,.out_partial_data (calc_pout_18_sum) //|> w
,.out_partial_valid (calc_pout_vld[18]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_19 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_19) //|< r
,.in_op (calc_op1_19) //|< r
,.in_op_valid (calc_op1_vld[19]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[19]) //|< r
,.out_final_data (calc_fout_19_sum) //|> w
,.out_final_sat (calc_fout_sat[19]) //|> w
,.out_final_valid (calc_fout_vld[19]) //|> w
,.out_partial_data (calc_pout_19_sum) //|> w
,.out_partial_valid (calc_pout_vld[19]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_20 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_20) //|< r
,.in_op (calc_op1_20) //|< r
,.in_op_valid (calc_op1_vld[20]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[20]) //|< r
,.out_final_data (calc_fout_20_sum) //|> w
,.out_final_sat (calc_fout_sat[20]) //|> w
,.out_final_valid (calc_fout_vld[20]) //|> w
,.out_partial_data (calc_pout_20_sum) //|> w
,.out_partial_valid (calc_pout_vld[20]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_21 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_21) //|< r
,.in_op (calc_op1_21) //|< r
,.in_op_valid (calc_op1_vld[21]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[21]) //|< r
,.out_final_data (calc_fout_21_sum) //|> w
,.out_final_sat (calc_fout_sat[21]) //|> w
,.out_final_valid (calc_fout_vld[21]) //|> w
,.out_partial_data (calc_pout_21_sum) //|> w
,.out_partial_valid (calc_pout_vld[21]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_22 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_22) //|< r
,.in_op (calc_op1_22) //|< r
,.in_op_valid (calc_op1_vld[22]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[22]) //|< r
,.out_final_data (calc_fout_22_sum) //|> w
,.out_final_sat (calc_fout_sat[22]) //|> w
,.out_final_valid (calc_fout_vld[22]) //|> w
,.out_partial_data (calc_pout_22_sum) //|> w
,.out_partial_valid (calc_pout_vld[22]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_23 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_23) //|< r
,.in_op (calc_op1_23) //|< r
,.in_op_valid (calc_op1_vld[23]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[23]) //|< r
,.out_final_data (calc_fout_23_sum) //|> w
,.out_final_sat (calc_fout_sat[23]) //|> w
,.out_final_valid (calc_fout_vld[23]) //|> w
,.out_partial_data (calc_pout_23_sum) //|> w
,.out_partial_valid (calc_pout_vld[23]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_24 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_24) //|< r
,.in_op (calc_op1_24) //|< r
,.in_op_valid (calc_op1_vld[24]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[24]) //|< r
,.out_final_data (calc_fout_24_sum) //|> w
,.out_final_sat (calc_fout_sat[24]) //|> w
,.out_final_valid (calc_fout_vld[24]) //|> w
,.out_partial_data (calc_pout_24_sum) //|> w
,.out_partial_valid (calc_pout_vld[24]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_25 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_25) //|< r
,.in_op (calc_op1_25) //|< r
,.in_op_valid (calc_op1_vld[25]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[25]) //|< r
,.out_final_data (calc_fout_25_sum) //|> w
,.out_final_sat (calc_fout_sat[25]) //|> w
,.out_final_valid (calc_fout_vld[25]) //|> w
,.out_partial_data (calc_pout_25_sum) //|> w
,.out_partial_valid (calc_pout_vld[25]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_26 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_26) //|< r
,.in_op (calc_op1_26) //|< r
,.in_op_valid (calc_op1_vld[26]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[26]) //|< r
,.out_final_data (calc_fout_26_sum) //|> w
,.out_final_sat (calc_fout_sat[26]) //|> w
,.out_final_valid (calc_fout_vld[26]) //|> w
,.out_partial_data (calc_pout_26_sum) //|> w
,.out_partial_valid (calc_pout_vld[26]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_27 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_27) //|< r
,.in_op (calc_op1_27) //|< r
,.in_op_valid (calc_op1_vld[27]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[27]) //|< r
,.out_final_data (calc_fout_27_sum) //|> w
,.out_final_sat (calc_fout_sat[27]) //|> w
,.out_final_valid (calc_fout_vld[27]) //|> w
,.out_partial_data (calc_pout_27_sum) //|> w
,.out_partial_valid (calc_pout_vld[27]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_28 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_28) //|< r
,.in_op (calc_op1_28) //|< r
,.in_op_valid (calc_op1_vld[28]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[28]) //|< r
,.out_final_data (calc_fout_28_sum) //|> w
,.out_final_sat (calc_fout_sat[28]) //|> w
,.out_final_valid (calc_fout_vld[28]) //|> w
,.out_partial_data (calc_pout_28_sum) //|> w
,.out_partial_valid (calc_pout_vld[28]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_29 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_29) //|< r
,.in_op (calc_op1_29) //|< r
,.in_op_valid (calc_op1_vld[29]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[29]) //|< r
,.out_final_data (calc_fout_29_sum) //|> w
,.out_final_sat (calc_fout_sat[29]) //|> w
,.out_final_valid (calc_fout_vld[29]) //|> w
,.out_partial_data (calc_pout_29_sum) //|> w
,.out_partial_valid (calc_pout_vld[29]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_30 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_30) //|< r
,.in_op (calc_op1_30) //|< r
,.in_op_valid (calc_op1_vld[30]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[30]) //|< r
,.out_final_data (calc_fout_30_sum) //|> w
,.out_final_sat (calc_fout_sat[30]) //|> w
,.out_final_valid (calc_fout_vld[30]) //|> w
,.out_partial_data (calc_pout_30_sum) //|> w
,.out_partial_valid (calc_pout_vld[30]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8_gate u_cell_int8_31 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_31) //|< r
,.in_op (calc_op1_31) //|< r
,.in_op_valid (calc_op1_vld[31]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[31]) //|< r
,.out_final_data (calc_fout_31_sum) //|> w
,.out_final_sat (calc_fout_sat[31]) //|> w
,.out_final_valid (calc_fout_vld[31]) //|> w
,.out_partial_data (calc_pout_31_sum) //|> w
,.out_partial_valid (calc_pout_vld[31]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire calc_valid_d0 = calc_valid;
wire calc_wr_en_d0 = calc_wr_en;
wire [5:0] calc_addr_d0 = calc_addr;
wire calc_dlv_valid_d0 = calc_dlv_valid;
wire calc_stripe_end_d0 = calc_stripe_end;
wire calc_layer_end_d0 = calc_layer_end;
// Latency pipeline to balance with calc cells, signal for both abuffer & dbuffer
//: my $start = 0;
//: for(my $i = $start; $i < $start + 2; $i ++) {
//: my $j = $i + 1;
//: &eperl::flop(" -q  calc_valid_d${j}  -d \"calc_valid_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  calc_wr_en_d${j}  -d  \"calc_wr_en_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid 6 -q  calc_addr_d${j}  -en \"calc_valid_d${i}\" -d  \"calc_addr_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: }
//: my $pin = $start + 2;
//: print qq(
//: wire calc_valid_out = calc_valid_d${pin};
//: wire calc_wr_en_out = calc_wr_en_d${pin};
//: wire [5:0] calc_addr_out = calc_addr_d${pin};
//: );
//:
//: for(my $i = $start; $i < $start + 2; $i ++) {
//: my $j = $i + 1;
//: &eperl::flop(" -q  calc_dlv_valid_d${j}  -d \"calc_dlv_valid_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  calc_stripe_end_d${j}  -en \"calc_dlv_valid_d${i}\" -d  \"calc_stripe_end_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  calc_layer_end_d${j}  -en \"calc_dlv_valid_d${i}\" -d  \"calc_layer_end_d${i} \" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: }
//: my $fin = $start + 2;
//: print qq(
//: wire calc_dlv_valid_out = calc_dlv_valid_d${fin};
//: wire calc_stripe_end_out = calc_stripe_end_d${fin};
//: wire calc_layer_end_out = calc_layer_end_d${fin};
//: );
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  calc_valid_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_valid_d1 <= 'b0;
   end else begin
       calc_valid_d1 <= calc_valid_d0;
   end
end
reg  calc_wr_en_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_wr_en_d1 <= 'b0;
   end else begin
       calc_wr_en_d1 <= calc_wr_en_d0;
   end
end
reg [5:0] calc_addr_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_addr_d1 <= 'b0;
   end else begin
       if ((calc_valid_d0) == 1'b1) begin
           calc_addr_d1 <= calc_addr_d0;
       // VCS coverage off
       end else if ((calc_valid_d0) == 1'b0) begin
       end else begin
           calc_addr_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  calc_valid_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_valid_d2 <= 'b0;
   end else begin
       calc_valid_d2 <= calc_valid_d1;
   end
end
reg  calc_wr_en_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_wr_en_d2 <= 'b0;
   end else begin
       calc_wr_en_d2 <= calc_wr_en_d1;
   end
end
reg [5:0] calc_addr_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_addr_d2 <= 'b0;
   end else begin
       if ((calc_valid_d1) == 1'b1) begin
           calc_addr_d2 <= calc_addr_d1;
       // VCS coverage off
       end else if ((calc_valid_d1) == 1'b0) begin
       end else begin
           calc_addr_d2 <= 'bx;
       // VCS coverage on
       end
   end
end

wire calc_valid_out = calc_valid_d2;
wire calc_wr_en_out = calc_wr_en_d2;
wire [5:0] calc_addr_out = calc_addr_d2;
reg  calc_dlv_valid_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_dlv_valid_d1 <= 'b0;
   end else begin
       calc_dlv_valid_d1 <= calc_dlv_valid_d0;
   end
end
reg  calc_stripe_end_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_stripe_end_d1 <= 'b0;
   end else begin
       if ((calc_dlv_valid_d0) == 1'b1) begin
           calc_stripe_end_d1 <= calc_stripe_end_d0;
       // VCS coverage off
       end else if ((calc_dlv_valid_d0) == 1'b0) begin
       end else begin
           calc_stripe_end_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  calc_layer_end_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_layer_end_d1 <= 'b0;
   end else begin
       if ((calc_dlv_valid_d0) == 1'b1) begin
           calc_layer_end_d1 <= calc_layer_end_d0 ;
       // VCS coverage off
       end else if ((calc_dlv_valid_d0) == 1'b0) begin
       end else begin
           calc_layer_end_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  calc_dlv_valid_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_dlv_valid_d2 <= 'b0;
   end else begin
       calc_dlv_valid_d2 <= calc_dlv_valid_d1;
   end
end
reg  calc_stripe_end_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_stripe_end_d2 <= 'b0;
   end else begin
       if ((calc_dlv_valid_d1) == 1'b1) begin
           calc_stripe_end_d2 <= calc_stripe_end_d1;
       // VCS coverage off
       end else if ((calc_dlv_valid_d1) == 1'b0) begin
       end else begin
           calc_stripe_end_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  calc_layer_end_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       calc_layer_end_d2 <= 'b0;
   end else begin
       if ((calc_dlv_valid_d1) == 1'b1) begin
           calc_layer_end_d2 <= calc_layer_end_d1 ;
       // VCS coverage off
       end else if ((calc_dlv_valid_d1) == 1'b0) begin
       end else begin
           calc_layer_end_d2 <= 'bx;
       // VCS coverage on
       end
   end
end

wire calc_dlv_valid_out = calc_dlv_valid_d2;
wire calc_stripe_end_out = calc_stripe_end_d2;
wire calc_layer_end_out = calc_layer_end_d2;

//| eperl: generated_end (DO NOT EDIT ABOVE)
// Gather of accumulator result
//: my $int8_out = 34;
//: my $final_out = 32;
//: for(my $i=0; $i <32; $i ++) {
//: print qq(
//: wire [${int8_out}-1:0] calc_pout_${i} = ({${int8_out}{calc_pout_vld[${i}]}} & calc_pout_${i}_sum););
//: }
//: for(my $i = 0; $i <32; $i ++) {
//: print qq(
//: wire [${final_out}-1:0] calc_fout_${i} = ({${final_out}{calc_fout_vld[${i}]}} & calc_fout_${i}_sum););
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [34-1:0] calc_pout_0 = ({34{calc_pout_vld[0]}} & calc_pout_0_sum);
wire [34-1:0] calc_pout_1 = ({34{calc_pout_vld[1]}} & calc_pout_1_sum);
wire [34-1:0] calc_pout_2 = ({34{calc_pout_vld[2]}} & calc_pout_2_sum);
wire [34-1:0] calc_pout_3 = ({34{calc_pout_vld[3]}} & calc_pout_3_sum);
wire [34-1:0] calc_pout_4 = ({34{calc_pout_vld[4]}} & calc_pout_4_sum);
wire [34-1:0] calc_pout_5 = ({34{calc_pout_vld[5]}} & calc_pout_5_sum);
wire [34-1:0] calc_pout_6 = ({34{calc_pout_vld[6]}} & calc_pout_6_sum);
wire [34-1:0] calc_pout_7 = ({34{calc_pout_vld[7]}} & calc_pout_7_sum);
wire [34-1:0] calc_pout_8 = ({34{calc_pout_vld[8]}} & calc_pout_8_sum);
wire [34-1:0] calc_pout_9 = ({34{calc_pout_vld[9]}} & calc_pout_9_sum);
wire [34-1:0] calc_pout_10 = ({34{calc_pout_vld[10]}} & calc_pout_10_sum);
wire [34-1:0] calc_pout_11 = ({34{calc_pout_vld[11]}} & calc_pout_11_sum);
wire [34-1:0] calc_pout_12 = ({34{calc_pout_vld[12]}} & calc_pout_12_sum);
wire [34-1:0] calc_pout_13 = ({34{calc_pout_vld[13]}} & calc_pout_13_sum);
wire [34-1:0] calc_pout_14 = ({34{calc_pout_vld[14]}} & calc_pout_14_sum);
wire [34-1:0] calc_pout_15 = ({34{calc_pout_vld[15]}} & calc_pout_15_sum);
wire [34-1:0] calc_pout_16 = ({34{calc_pout_vld[16]}} & calc_pout_16_sum);
wire [34-1:0] calc_pout_17 = ({34{calc_pout_vld[17]}} & calc_pout_17_sum);
wire [34-1:0] calc_pout_18 = ({34{calc_pout_vld[18]}} & calc_pout_18_sum);
wire [34-1:0] calc_pout_19 = ({34{calc_pout_vld[19]}} & calc_pout_19_sum);
wire [34-1:0] calc_pout_20 = ({34{calc_pout_vld[20]}} & calc_pout_20_sum);
wire [34-1:0] calc_pout_21 = ({34{calc_pout_vld[21]}} & calc_pout_21_sum);
wire [34-1:0] calc_pout_22 = ({34{calc_pout_vld[22]}} & calc_pout_22_sum);
wire [34-1:0] calc_pout_23 = ({34{calc_pout_vld[23]}} & calc_pout_23_sum);
wire [34-1:0] calc_pout_24 = ({34{calc_pout_vld[24]}} & calc_pout_24_sum);
wire [34-1:0] calc_pout_25 = ({34{calc_pout_vld[25]}} & calc_pout_25_sum);
wire [34-1:0] calc_pout_26 = ({34{calc_pout_vld[26]}} & calc_pout_26_sum);
wire [34-1:0] calc_pout_27 = ({34{calc_pout_vld[27]}} & calc_pout_27_sum);
wire [34-1:0] calc_pout_28 = ({34{calc_pout_vld[28]}} & calc_pout_28_sum);
wire [34-1:0] calc_pout_29 = ({34{calc_pout_vld[29]}} & calc_pout_29_sum);
wire [34-1:0] calc_pout_30 = ({34{calc_pout_vld[30]}} & calc_pout_30_sum);
wire [34-1:0] calc_pout_31 = ({34{calc_pout_vld[31]}} & calc_pout_31_sum);
wire [32-1:0] calc_fout_0 = ({32{calc_fout_vld[0]}} & calc_fout_0_sum);
wire [32-1:0] calc_fout_1 = ({32{calc_fout_vld[1]}} & calc_fout_1_sum);
wire [32-1:0] calc_fout_2 = ({32{calc_fout_vld[2]}} & calc_fout_2_sum);
wire [32-1:0] calc_fout_3 = ({32{calc_fout_vld[3]}} & calc_fout_3_sum);
wire [32-1:0] calc_fout_4 = ({32{calc_fout_vld[4]}} & calc_fout_4_sum);
wire [32-1:0] calc_fout_5 = ({32{calc_fout_vld[5]}} & calc_fout_5_sum);
wire [32-1:0] calc_fout_6 = ({32{calc_fout_vld[6]}} & calc_fout_6_sum);
wire [32-1:0] calc_fout_7 = ({32{calc_fout_vld[7]}} & calc_fout_7_sum);
wire [32-1:0] calc_fout_8 = ({32{calc_fout_vld[8]}} & calc_fout_8_sum);
wire [32-1:0] calc_fout_9 = ({32{calc_fout_vld[9]}} & calc_fout_9_sum);
wire [32-1:0] calc_fout_10 = ({32{calc_fout_vld[10]}} & calc_fout_10_sum);
wire [32-1:0] calc_fout_11 = ({32{calc_fout_vld[11]}} & calc_fout_11_sum);
wire [32-1:0] calc_fout_12 = ({32{calc_fout_vld[12]}} & calc_fout_12_sum);
wire [32-1:0] calc_fout_13 = ({32{calc_fout_vld[13]}} & calc_fout_13_sum);
wire [32-1:0] calc_fout_14 = ({32{calc_fout_vld[14]}} & calc_fout_14_sum);
wire [32-1:0] calc_fout_15 = ({32{calc_fout_vld[15]}} & calc_fout_15_sum);
wire [32-1:0] calc_fout_16 = ({32{calc_fout_vld[16]}} & calc_fout_16_sum);
wire [32-1:0] calc_fout_17 = ({32{calc_fout_vld[17]}} & calc_fout_17_sum);
wire [32-1:0] calc_fout_18 = ({32{calc_fout_vld[18]}} & calc_fout_18_sum);
wire [32-1:0] calc_fout_19 = ({32{calc_fout_vld[19]}} & calc_fout_19_sum);
wire [32-1:0] calc_fout_20 = ({32{calc_fout_vld[20]}} & calc_fout_20_sum);
wire [32-1:0] calc_fout_21 = ({32{calc_fout_vld[21]}} & calc_fout_21_sum);
wire [32-1:0] calc_fout_22 = ({32{calc_fout_vld[22]}} & calc_fout_22_sum);
wire [32-1:0] calc_fout_23 = ({32{calc_fout_vld[23]}} & calc_fout_23_sum);
wire [32-1:0] calc_fout_24 = ({32{calc_fout_vld[24]}} & calc_fout_24_sum);
wire [32-1:0] calc_fout_25 = ({32{calc_fout_vld[25]}} & calc_fout_25_sum);
wire [32-1:0] calc_fout_26 = ({32{calc_fout_vld[26]}} & calc_fout_26_sum);
wire [32-1:0] calc_fout_27 = ({32{calc_fout_vld[27]}} & calc_fout_27_sum);
wire [32-1:0] calc_fout_28 = ({32{calc_fout_vld[28]}} & calc_fout_28_sum);
wire [32-1:0] calc_fout_29 = ({32{calc_fout_vld[29]}} & calc_fout_29_sum);
wire [32-1:0] calc_fout_30 = ({32{calc_fout_vld[30]}} & calc_fout_30_sum);
wire [32-1:0] calc_fout_31 = ({32{calc_fout_vld[31]}} & calc_fout_31_sum);
//| eperl: generated_end (DO NOT EDIT ABOVE)
// to abuffer, 1 pipe
wire [34*32 -1:0] abuf_wr_data_w;
// spyglass disable_block STARC05-3.3.1.4b
//: my $kk=34*32;
//: my $jj=5 +1;
//: for(my $i = 0; $i < 32; $i ++) {
//: print qq (
//: assign abuf_wr_data_w[34*($i+1)-1:34*$i] = calc_pout_${i}; );
//: }
//: &eperl::flop(" -q  abuf_wr_en  -d \"calc_wr_en_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid ${jj} -q  abuf_wr_addr  -en \"calc_wr_en_out\" -d  \"calc_addr_out[${jj}-1:0]\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid ${kk} -q  abuf_wr_data  -en \"calc_wr_en_out\" -d  \"abuf_wr_data_w\" -clk nvdla_core_clk -norst");
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign abuf_wr_data_w[34*(0+1)-1:34*0] = calc_pout_0; 
assign abuf_wr_data_w[34*(1+1)-1:34*1] = calc_pout_1; 
assign abuf_wr_data_w[34*(2+1)-1:34*2] = calc_pout_2; 
assign abuf_wr_data_w[34*(3+1)-1:34*3] = calc_pout_3; 
assign abuf_wr_data_w[34*(4+1)-1:34*4] = calc_pout_4; 
assign abuf_wr_data_w[34*(5+1)-1:34*5] = calc_pout_5; 
assign abuf_wr_data_w[34*(6+1)-1:34*6] = calc_pout_6; 
assign abuf_wr_data_w[34*(7+1)-1:34*7] = calc_pout_7; 
assign abuf_wr_data_w[34*(8+1)-1:34*8] = calc_pout_8; 
assign abuf_wr_data_w[34*(9+1)-1:34*9] = calc_pout_9; 
assign abuf_wr_data_w[34*(10+1)-1:34*10] = calc_pout_10; 
assign abuf_wr_data_w[34*(11+1)-1:34*11] = calc_pout_11; 
assign abuf_wr_data_w[34*(12+1)-1:34*12] = calc_pout_12; 
assign abuf_wr_data_w[34*(13+1)-1:34*13] = calc_pout_13; 
assign abuf_wr_data_w[34*(14+1)-1:34*14] = calc_pout_14; 
assign abuf_wr_data_w[34*(15+1)-1:34*15] = calc_pout_15; 
assign abuf_wr_data_w[34*(16+1)-1:34*16] = calc_pout_16; 
assign abuf_wr_data_w[34*(17+1)-1:34*17] = calc_pout_17; 
assign abuf_wr_data_w[34*(18+1)-1:34*18] = calc_pout_18; 
assign abuf_wr_data_w[34*(19+1)-1:34*19] = calc_pout_19; 
assign abuf_wr_data_w[34*(20+1)-1:34*20] = calc_pout_20; 
assign abuf_wr_data_w[34*(21+1)-1:34*21] = calc_pout_21; 
assign abuf_wr_data_w[34*(22+1)-1:34*22] = calc_pout_22; 
assign abuf_wr_data_w[34*(23+1)-1:34*23] = calc_pout_23; 
assign abuf_wr_data_w[34*(24+1)-1:34*24] = calc_pout_24; 
assign abuf_wr_data_w[34*(25+1)-1:34*25] = calc_pout_25; 
assign abuf_wr_data_w[34*(26+1)-1:34*26] = calc_pout_26; 
assign abuf_wr_data_w[34*(27+1)-1:34*27] = calc_pout_27; 
assign abuf_wr_data_w[34*(28+1)-1:34*28] = calc_pout_28; 
assign abuf_wr_data_w[34*(29+1)-1:34*29] = calc_pout_29; 
assign abuf_wr_data_w[34*(30+1)-1:34*30] = calc_pout_30; 
assign abuf_wr_data_w[34*(31+1)-1:34*31] = calc_pout_31; reg  abuf_wr_en;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       abuf_wr_en <= 'b0;
   end else begin
       abuf_wr_en <= calc_wr_en_out;
   end
end
reg [5:0] abuf_wr_addr;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       abuf_wr_addr <= 'b0;
   end else begin
       if ((calc_wr_en_out) == 1'b1) begin
           abuf_wr_addr <= calc_addr_out[6-1:0];
       // VCS coverage off
       end else if ((calc_wr_en_out) == 1'b0) begin
       end else begin
           abuf_wr_addr <= 'bx;
       // VCS coverage on
       end
   end
end
reg [1087:0] abuf_wr_data;
always @(posedge nvdla_core_clk) begin
       if ((calc_wr_en_out) == 1'b1) begin
           abuf_wr_data <= abuf_wr_data_w;
       // VCS coverage off
       end else if ((calc_wr_en_out) == 1'b0) begin
       end else begin
           abuf_wr_data <= 'bx;
       // VCS coverage on
       end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block STARC05-3.3.1.4b
// to dbuffer, 1 pipe.
wire [32*32 -1:0] dlv_data_w;
// spyglass disable_block STARC05-3.3.1.4b
//: my $kk=32*32;
//: for(my $i = 0; $i < 32; $i ++) {
//: print qq(
//: assign dlv_data_w[32*($i+1)-1:32*$i] = calc_fout_${i};);
//: }
//:
//: &eperl::flop("-wid ${kk} -q  dlv_data  -en \"calc_dlv_valid_out\" -d  \"dlv_data_w\" -clk nvdla_core_clk -norst");
//: &eperl::flop(" -q  dlv_valid  -d \"calc_dlv_valid_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_mask   -d  \"calc_dlv_valid_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_stripe_end  -en \"calc_dlv_valid_out\" -d  \"calc_stripe_end_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_layer_end  -en \"calc_dlv_valid_out\" -d  \"calc_layer_end_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign dlv_data_w[32*(0+1)-1:32*0] = calc_fout_0;
assign dlv_data_w[32*(1+1)-1:32*1] = calc_fout_1;
assign dlv_data_w[32*(2+1)-1:32*2] = calc_fout_2;
assign dlv_data_w[32*(3+1)-1:32*3] = calc_fout_3;
assign dlv_data_w[32*(4+1)-1:32*4] = calc_fout_4;
assign dlv_data_w[32*(5+1)-1:32*5] = calc_fout_5;
assign dlv_data_w[32*(6+1)-1:32*6] = calc_fout_6;
assign dlv_data_w[32*(7+1)-1:32*7] = calc_fout_7;
assign dlv_data_w[32*(8+1)-1:32*8] = calc_fout_8;
assign dlv_data_w[32*(9+1)-1:32*9] = calc_fout_9;
assign dlv_data_w[32*(10+1)-1:32*10] = calc_fout_10;
assign dlv_data_w[32*(11+1)-1:32*11] = calc_fout_11;
assign dlv_data_w[32*(12+1)-1:32*12] = calc_fout_12;
assign dlv_data_w[32*(13+1)-1:32*13] = calc_fout_13;
assign dlv_data_w[32*(14+1)-1:32*14] = calc_fout_14;
assign dlv_data_w[32*(15+1)-1:32*15] = calc_fout_15;
assign dlv_data_w[32*(16+1)-1:32*16] = calc_fout_16;
assign dlv_data_w[32*(17+1)-1:32*17] = calc_fout_17;
assign dlv_data_w[32*(18+1)-1:32*18] = calc_fout_18;
assign dlv_data_w[32*(19+1)-1:32*19] = calc_fout_19;
assign dlv_data_w[32*(20+1)-1:32*20] = calc_fout_20;
assign dlv_data_w[32*(21+1)-1:32*21] = calc_fout_21;
assign dlv_data_w[32*(22+1)-1:32*22] = calc_fout_22;
assign dlv_data_w[32*(23+1)-1:32*23] = calc_fout_23;
assign dlv_data_w[32*(24+1)-1:32*24] = calc_fout_24;
assign dlv_data_w[32*(25+1)-1:32*25] = calc_fout_25;
assign dlv_data_w[32*(26+1)-1:32*26] = calc_fout_26;
assign dlv_data_w[32*(27+1)-1:32*27] = calc_fout_27;
assign dlv_data_w[32*(28+1)-1:32*28] = calc_fout_28;
assign dlv_data_w[32*(29+1)-1:32*29] = calc_fout_29;
assign dlv_data_w[32*(30+1)-1:32*30] = calc_fout_30;
assign dlv_data_w[32*(31+1)-1:32*31] = calc_fout_31;reg [1023:0] dlv_data;
always @(posedge nvdla_core_clk) begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_data <= dlv_data_w;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_data <= 'bx;
       // VCS coverage on
       end
end
reg  dlv_valid;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       dlv_valid <= 'b0;
   end else begin
       dlv_valid <= calc_dlv_valid_out;
   end
end
reg  dlv_mask;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       dlv_mask <= 'b0;
   end else begin
       dlv_mask <= calc_dlv_valid_out;
   end
end
reg  dlv_stripe_end;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       dlv_stripe_end <= 'b0;
   end else begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_stripe_end <= calc_stripe_end_out;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_stripe_end <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dlv_layer_end;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       dlv_layer_end <= 'b0;
   end else begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_layer_end <= calc_layer_end_out;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_layer_end <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block STARC05-3.3.1.4b
assign dlv_pd[0] = dlv_stripe_end ;
assign dlv_pd[1] = dlv_layer_end ;
// overflow count
reg dlv_sat_end_d1;
wire [32 -1:0] dlv_sat_bit = calc_fout_sat;
wire dlv_sat_end = calc_layer_end_out & calc_stripe_end_out;
wire dlv_sat_clr = calc_dlv_valid_out & ~dlv_sat_end & dlv_sat_end_d1;
//: my $kk= 32;
//: my $jj= 5;
//: &eperl::flop(" -q  dlv_sat_vld_d1  -d \"calc_dlv_valid_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-nodeclare  -q  dlv_sat_end_d1  -en \"calc_dlv_valid_out\" -d  \"dlv_sat_end\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 1");
//: &eperl::flop(" -wid ${kk} -q  dlv_sat_bit_d1  -en \"calc_dlv_valid_out\" -d  \"dlv_sat_bit\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_sat_clr_d1  -d \"dlv_sat_clr\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: print "wire [${jj}-1:0] sat_sum = ";
//: for(my $i=0; $i<32 -1 ; $i++){
//: print "dlv_sat_bit_d1[${i}]+";
//: }
//: my $i=32 -1;
//: print "dlv_sat_bit_d1[${i}]; \n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  dlv_sat_vld_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_vld_d1 <= 'b0;
   end else begin
       dlv_sat_vld_d1 <= calc_dlv_valid_out;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_end_d1 <= 1;
   end else begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_sat_end_d1 <= dlv_sat_end;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_sat_end_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [31:0] dlv_sat_bit_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_bit_d1 <= 'b0;
   end else begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_sat_bit_d1 <= dlv_sat_bit;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_sat_bit_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dlv_sat_clr_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_clr_d1 <= 'b0;
   end else begin
       dlv_sat_clr_d1 <= dlv_sat_clr;
   end
end
wire [5-1:0] sat_sum = dlv_sat_bit_d1[0]+dlv_sat_bit_d1[1]+dlv_sat_bit_d1[2]+dlv_sat_bit_d1[3]+dlv_sat_bit_d1[4]+dlv_sat_bit_d1[5]+dlv_sat_bit_d1[6]+dlv_sat_bit_d1[7]+dlv_sat_bit_d1[8]+dlv_sat_bit_d1[9]+dlv_sat_bit_d1[10]+dlv_sat_bit_d1[11]+dlv_sat_bit_d1[12]+dlv_sat_bit_d1[13]+dlv_sat_bit_d1[14]+dlv_sat_bit_d1[15]+dlv_sat_bit_d1[16]+dlv_sat_bit_d1[17]+dlv_sat_bit_d1[18]+dlv_sat_bit_d1[19]+dlv_sat_bit_d1[20]+dlv_sat_bit_d1[21]+dlv_sat_bit_d1[22]+dlv_sat_bit_d1[23]+dlv_sat_bit_d1[24]+dlv_sat_bit_d1[25]+dlv_sat_bit_d1[26]+dlv_sat_bit_d1[27]+dlv_sat_bit_d1[28]+dlv_sat_bit_d1[29]+dlv_sat_bit_d1[30]+dlv_sat_bit_d1[31]; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [31:0] sat_count_inc;
reg [31:0] sat_count;
wire sat_carry;
wire [31:0] sat_count_w;
wire sat_reg_en;
assign {sat_carry, sat_count_inc[31:0]} = sat_count + sat_sum;
assign sat_count_w = (dlv_sat_clr_d1) ? {24'b0, sat_sum} : sat_carry ? {32{1'b1}} : sat_count_inc;
assign sat_reg_en = dlv_sat_vld_d1 & ((|sat_sum) | dlv_sat_clr_d1);
//: &eperl::flop("-nodeclare -q  sat_count  -en \"sat_reg_en\" -d  \"sat_count_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sat_count <= 'b0;
   end else begin
       if ((sat_reg_en) == 1'b1) begin
           sat_count <= sat_count_w;
       // VCS coverage off
       end else if ((sat_reg_en) == 1'b0) begin
       end else begin
           sat_count <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block NoWidthInBasedNum-ML
// spyglass enable_block STARC-2.10.1.6
assign dp2reg_sat_count = sat_count;
endmodule