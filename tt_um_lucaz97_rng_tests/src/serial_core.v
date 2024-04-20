module serial_core (
  clk, rst_n, is_random_rsc_dat, is_random_triosy_lz, valid_rsc_dat, valid_triosy_lz,
      epsilon_rsc_dat, epsilon_triosy_lz
);
  input clk;
  input rst_n;
  output is_random_rsc_dat;
  output is_random_triosy_lz;
  output valid_rsc_dat;
  output valid_triosy_lz;
  input epsilon_rsc_dat;
  output epsilon_triosy_lz;


  // Interconnect Declarations
  reg is_random_rsci_idat;
  reg valid_rsci_idat;
  wire epsilon_rsci_idat;
  wire [9:0] acc_tmp;
  wire [10:0] nl_acc_tmp;
  wire or_dcpl_9;
  wire or_dcpl_11;
  wire or_dcpl_12;
  wire or_dcpl_17;
  wire or_dcpl_23;
  wire or_dcpl_29;
  reg [9:0] count_sva;
  reg shift_reg_1_1_sva;
  reg shift_reg_1_0_sva;
  wire [23:0] if_1_acc_5_psp_sva_1;
  wire [24:0] nl_if_1_acc_5_psp_sva_1;
  wire and_21_rgt;
  reg reg_epsilon_triosy_obj_ld_cse;
  reg [9:0] P3_0_sva;
  reg [9:0] P3_1_sva;
  reg [9:0] P2_1_sva;
  reg [9:0] P2_2_sva;
  reg [9:0] P2_0_sva;
  reg [9:0] P2_3_sva;
  reg [9:0] P1_3_sva;
  reg [9:0] P1_4_sva;
  reg [9:0] P1_2_sva;
  reg [9:0] P1_5_sva;
  reg [9:0] P1_1_sva;
  reg [9:0] P1_6_sva;
  reg [9:0] P1_0_sva;
  reg [9:0] P1_7_sva;
  reg if_1_land_lpi_1_dfm;
  wire [9:0] asn_46_mx0w0;
  wire [10:0] nl_asn_46_mx0w0;
  wire [9:0] P1_7_sva_dfm_mx0;
  wire [9:0] P1_3_sva_dfm_mx0;
  wire [9:0] P2_3_sva_dfm_mx0;
  wire [9:0] operator_10_10_false_AC_TRN_AC_WRAP_1_operator_10_10_false_AC_TRN_AC_WRAP_1_acc_1_ctmp_sva_1;
  wire [10:0] nl_operator_10_10_false_AC_TRN_AC_WRAP_1_operator_10_10_false_AC_TRN_AC_WRAP_1_acc_1_ctmp_sva_1;
  wire [9:0] P1_4_sva_dfm_mx0;
  wire [9:0] P1_0_sva_dfm_mx0;
  wire [9:0] P2_0_sva_dfm_mx0;
  wire [9:0] P1_6_sva_dfm_mx0;
  wire [9:0] P1_2_sva_dfm_mx0;
  wire [9:0] P2_2_sva_dfm_mx0;
  wire [9:0] P1_5_sva_dfm_mx0;
  wire [9:0] P1_1_sva_dfm_mx0;
  wire [9:0] P2_1_sva_dfm_mx0;
  wire if_1_land_lpi_1_dfm_mx0;
  wire [21:0] sum2_29_8_1_sva_1;
  wire [23:0] nl_sum2_29_8_1_sva_1;
  wire [5:0] if_1_acc_10_psp_sva_1;
  wire [6:0] nl_if_1_acc_10_psp_sva_1;
  wire [21:0] sum1_29_8_1_sva_1;
  wire [24:0] nl_sum1_29_8_1_sva_1;
  wire [9:0] asn_70_mx0w1;
  wire [10:0] nl_asn_70_mx0w1;
  wire [9:0] P3_0_sva_dfm_mx0;
  wire [9:0] P3_1_sva_dfm_mx0;
  wire skip_static_init_or_ssc;
  reg reg_skip_ftd;
  reg reg_skip_ftd_1_1;
  reg reg_skip_ftd_1_0;
  wire nand_27_cse;
  wire and_45_cse;
  wire [4:0] if_1_acc_9_itm;
  wire [5:0] nl_if_1_acc_9_itm;
  wire [19:0] if_1_acc_1_itm_20_1_1;

  wire[24:0] if_1_acc_nl;
  wire[25:0] nl_if_1_acc_nl;
  wire[23:0] if_1_acc_14_nl;
  wire[24:0] nl_if_1_acc_14_nl;
  wire[18:0] if_1_acc_15_nl;
  wire[19:0] nl_if_1_acc_15_nl;
  wire[9:0] operator_10_10_false_AC_TRN_AC_WRAP_2_mux_nl;
  wire or_14_nl;
  wire or_16_nl;
  wire or_17_nl;
  wire[9:0] operator_10_10_false_AC_TRN_AC_WRAP_1_mux_nl;
  wire or_20_nl;
  wire or_22_nl;
  wire or_23_nl;
  wire or_26_nl;
  wire or_28_nl;
  wire or_29_nl;
  wire or_32_nl;
  wire or_34_nl;
  wire or_35_nl;
  wire if_1_if_1_and_1_nl;
  wire[23:0] if_1_aif_acc_nl;
  wire[24:0] nl_if_1_aif_acc_nl;
  wire[23:0] if_1_acc_8_nl;
  wire[24:0] nl_if_1_acc_8_nl;
  wire or_44_nl;
  wire[19:0] if_1_for_3_mul_nl;
  wire[19:0] if_1_for_4_mul_nl;
  wire[19:0] if_1_for_1_mul_nl;
  wire[19:0] if_1_for_2_mul_nl;
  wire[20:0] if_1_acc_1_nl;
  wire[21:0] nl_if_1_acc_1_nl;
  wire[19:0] if_1_mul_nl;
  wire[19:0] if_1_mul_1_nl;
  wire[19:0] if_1_for_1_3_mul_nl;
  wire[19:0] if_1_for_1_4_mul_nl;
  wire[19:0] if_1_for_1_7_mul_nl;
  wire[19:0] if_1_for_1_8_mul_nl;
  wire[19:0] if_1_for_1_5_mul_nl;
  wire[19:0] if_1_for_1_6_mul_nl;
  wire[19:0] if_1_for_1_1_mul_nl;
  wire[19:0] if_1_for_1_2_mul_nl;
  wire[9:0] operator_10_10_false_AC_TRN_AC_WRAP_mux_nl;
  wire and_24_nl;
  wire or_46_nl;

  // Interconnect Declarations for Component Instantiations 
  ccs_out_v1 #(.rscid(32'sd1),
  .width(32'sd1)) is_random_rsci (
      .idat(is_random_rsci_idat),
      .dat(is_random_rsc_dat)
    );
  ccs_out_v1 #(.rscid(32'sd2),
  .width(32'sd1)) valid_rsci (
      .idat(valid_rsci_idat),
      .dat(valid_rsc_dat)
    );
  ccs_in_v1 #(.rscid(32'sd3),
  .width(32'sd1)) epsilon_rsci (
      .dat(epsilon_rsc_dat),
      .idat(epsilon_rsci_idat)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) is_random_triosy_obj (
      .ld(reg_epsilon_triosy_obj_ld_cse),
      .lz(is_random_triosy_lz)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) valid_triosy_obj (
      .ld(reg_epsilon_triosy_obj_ld_cse),
      .lz(valid_triosy_lz)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) epsilon_triosy_obj (
      .ld(reg_epsilon_triosy_obj_ld_cse),
      .lz(epsilon_triosy_lz)
    );
  assign nand_27_cse = ~((count_sva==10'b1111111111));
  assign and_45_cse = (count_sva==10'b1111111111);
  assign skip_static_init_or_ssc = (~ nand_27_cse) | and_21_rgt;
  assign operator_10_10_false_AC_TRN_AC_WRAP_2_mux_nl = MUX_v_10_8_2(P1_0_sva, P1_1_sva,
      P1_2_sva, P1_3_sva, P1_4_sva, P1_5_sva, P1_6_sva, P1_7_sva, {shift_reg_1_1_sva
      , shift_reg_1_0_sva , epsilon_rsci_idat});
  assign nl_asn_46_mx0w0 = operator_10_10_false_AC_TRN_AC_WRAP_2_mux_nl + 10'b0000000001;
  assign asn_46_mx0w0 = nl_asn_46_mx0w0[9:0];
  assign or_14_nl = or_dcpl_12 | or_dcpl_9 | (~ shift_reg_1_1_sva);
  assign P1_7_sva_dfm_mx0 = MUX_v_10_2_2(asn_46_mx0w0, P1_7_sva, or_14_nl);
  assign or_16_nl = or_dcpl_12 | or_dcpl_9 | shift_reg_1_1_sva;
  assign P1_3_sva_dfm_mx0 = MUX_v_10_2_2(asn_46_mx0w0, P1_3_sva, or_16_nl);
  assign or_17_nl = or_dcpl_12 | or_dcpl_9;
  assign P2_3_sva_dfm_mx0 = MUX_v_10_2_2(operator_10_10_false_AC_TRN_AC_WRAP_1_operator_10_10_false_AC_TRN_AC_WRAP_1_acc_1_ctmp_sva_1,
      P2_3_sva, or_17_nl);
  assign operator_10_10_false_AC_TRN_AC_WRAP_1_mux_nl = MUX_v_10_4_2(P2_0_sva, P2_1_sva,
      P2_2_sva, P2_3_sva, {shift_reg_1_0_sva , epsilon_rsci_idat});
  assign nl_operator_10_10_false_AC_TRN_AC_WRAP_1_operator_10_10_false_AC_TRN_AC_WRAP_1_acc_1_ctmp_sva_1
      = operator_10_10_false_AC_TRN_AC_WRAP_1_mux_nl + 10'b0000000001;
  assign operator_10_10_false_AC_TRN_AC_WRAP_1_operator_10_10_false_AC_TRN_AC_WRAP_1_acc_1_ctmp_sva_1
      = nl_operator_10_10_false_AC_TRN_AC_WRAP_1_operator_10_10_false_AC_TRN_AC_WRAP_1_acc_1_ctmp_sva_1[9:0];
  assign or_20_nl = or_dcpl_12 | or_dcpl_17 | (~ shift_reg_1_1_sva);
  assign P1_4_sva_dfm_mx0 = MUX_v_10_2_2(asn_46_mx0w0, P1_4_sva, or_20_nl);
  assign or_22_nl = or_dcpl_12 | or_dcpl_17 | shift_reg_1_1_sva;
  assign P1_0_sva_dfm_mx0 = MUX_v_10_2_2(asn_46_mx0w0, P1_0_sva, or_22_nl);
  assign or_23_nl = or_dcpl_12 | or_dcpl_17;
  assign P2_0_sva_dfm_mx0 = MUX_v_10_2_2(operator_10_10_false_AC_TRN_AC_WRAP_1_operator_10_10_false_AC_TRN_AC_WRAP_1_acc_1_ctmp_sva_1,
      P2_0_sva, or_23_nl);
  assign or_26_nl = or_dcpl_12 | or_dcpl_23 | (~ shift_reg_1_1_sva);
  assign P1_6_sva_dfm_mx0 = MUX_v_10_2_2(asn_46_mx0w0, P1_6_sva, or_26_nl);
  assign or_28_nl = or_dcpl_12 | or_dcpl_23 | shift_reg_1_1_sva;
  assign P1_2_sva_dfm_mx0 = MUX_v_10_2_2(asn_46_mx0w0, P1_2_sva, or_28_nl);
  assign or_29_nl = or_dcpl_12 | or_dcpl_23;
  assign P2_2_sva_dfm_mx0 = MUX_v_10_2_2(operator_10_10_false_AC_TRN_AC_WRAP_1_operator_10_10_false_AC_TRN_AC_WRAP_1_acc_1_ctmp_sva_1,
      P2_2_sva, or_29_nl);
  assign or_32_nl = or_dcpl_12 | or_dcpl_29 | (~ shift_reg_1_1_sva);
  assign P1_5_sva_dfm_mx0 = MUX_v_10_2_2(asn_46_mx0w0, P1_5_sva, or_32_nl);
  assign or_34_nl = or_dcpl_12 | or_dcpl_29 | shift_reg_1_1_sva;
  assign P1_1_sva_dfm_mx0 = MUX_v_10_2_2(asn_46_mx0w0, P1_1_sva, or_34_nl);
  assign or_35_nl = or_dcpl_12 | or_dcpl_29;
  assign P2_1_sva_dfm_mx0 = MUX_v_10_2_2(operator_10_10_false_AC_TRN_AC_WRAP_1_operator_10_10_false_AC_TRN_AC_WRAP_1_acc_1_ctmp_sva_1,
      P2_1_sva, or_35_nl);
  assign nl_if_1_aif_acc_nl = conv_u2s_23_24(if_1_acc_5_psp_sva_1[22:0]) + 24'b111111111111001010111001;
  assign if_1_aif_acc_nl = nl_if_1_aif_acc_nl[23:0];
  assign nl_if_1_acc_8_nl = (~ if_1_acc_5_psp_sva_1) + 24'b000000000000001000000011;
  assign if_1_acc_8_nl = nl_if_1_acc_8_nl[23:0];
  assign if_1_if_1_and_1_nl = (readslicef_24_1_23(if_1_aif_acc_nl)) & (readslicef_24_1_23(if_1_acc_8_nl));
  assign or_44_nl = (count_sva!=10'b1111111111);
  assign if_1_land_lpi_1_dfm_mx0 = MUX_s_1_2_2(if_1_if_1_and_1_nl, if_1_land_lpi_1_dfm,
      or_44_nl);
  assign if_1_for_3_mul_nl = P2_2_sva_dfm_mx0 * P2_2_sva_dfm_mx0;
  assign if_1_for_4_mul_nl = P2_3_sva_dfm_mx0 * P2_3_sva_dfm_mx0;
  assign if_1_for_1_mul_nl = P2_0_sva_dfm_mx0 * P2_0_sva_dfm_mx0;
  assign if_1_for_2_mul_nl = P2_1_sva_dfm_mx0 * P2_1_sva_dfm_mx0;
  assign nl_sum2_29_8_1_sva_1 = conv_u2u_20_22(if_1_for_3_mul_nl) + conv_u2u_20_22(if_1_for_4_mul_nl)
      + conv_u2u_20_22(if_1_for_1_mul_nl) + conv_u2u_20_22(if_1_for_2_mul_nl);
  assign sum2_29_8_1_sva_1 = nl_sum2_29_8_1_sva_1[21:0];
  assign if_1_mul_nl = P3_0_sva_dfm_mx0 * P3_0_sva_dfm_mx0;
  assign if_1_mul_1_nl = P3_1_sva_dfm_mx0 * P3_1_sva_dfm_mx0;
  assign nl_if_1_acc_1_nl = conv_u2u_20_21(if_1_mul_nl) + conv_u2u_20_21(if_1_mul_1_nl);
  assign if_1_acc_1_nl = nl_if_1_acc_1_nl[20:0];
  assign if_1_acc_1_itm_20_1_1 = readslicef_21_20_1(if_1_acc_1_nl);
  assign nl_if_1_acc_10_psp_sva_1 = conv_s2s_5_6(sum1_29_8_1_sva_1[21:17]) + 6'b111111;
  assign if_1_acc_10_psp_sva_1 = nl_if_1_acc_10_psp_sva_1[5:0];
  assign if_1_for_1_3_mul_nl = P1_2_sva_dfm_mx0 * P1_2_sva_dfm_mx0;
  assign if_1_for_1_4_mul_nl = P1_3_sva_dfm_mx0 * P1_3_sva_dfm_mx0;
  assign if_1_for_1_7_mul_nl = P1_6_sva_dfm_mx0 * P1_6_sva_dfm_mx0;
  assign if_1_for_1_8_mul_nl = P1_7_sva_dfm_mx0 * P1_7_sva_dfm_mx0;
  assign if_1_for_1_5_mul_nl = P1_4_sva_dfm_mx0 * P1_4_sva_dfm_mx0;
  assign if_1_for_1_6_mul_nl = P1_5_sva_dfm_mx0 * P1_5_sva_dfm_mx0;
  assign if_1_for_1_1_mul_nl = P1_0_sva_dfm_mx0 * P1_0_sva_dfm_mx0;
  assign if_1_for_1_2_mul_nl = P1_1_sva_dfm_mx0 * P1_1_sva_dfm_mx0;
  assign nl_sum1_29_8_1_sva_1 = conv_u2u_20_22(if_1_for_1_3_mul_nl) + conv_u2u_20_22(if_1_for_1_4_mul_nl)
      + conv_u2u_20_22(if_1_for_1_7_mul_nl) + conv_u2u_20_22(if_1_for_1_8_mul_nl)
      + conv_u2u_20_22(if_1_for_1_5_mul_nl) + conv_u2u_20_22(if_1_for_1_6_mul_nl)
      + conv_u2u_20_22(if_1_for_1_1_mul_nl) + conv_u2u_20_22(if_1_for_1_2_mul_nl);
  assign sum1_29_8_1_sva_1 = nl_sum1_29_8_1_sva_1[21:0];
  assign operator_10_10_false_AC_TRN_AC_WRAP_mux_nl = MUX_v_10_2_2(P3_0_sva, P3_1_sva,
      epsilon_rsci_idat);
  assign nl_asn_70_mx0w1 = operator_10_10_false_AC_TRN_AC_WRAP_mux_nl + 10'b0000000001;
  assign asn_70_mx0w1 = nl_asn_70_mx0w1[9:0];
  assign and_24_nl = (~(reg_skip_ftd | reg_skip_ftd_1_1)) & (~(reg_skip_ftd_1_0 |
      epsilon_rsci_idat));
  assign P3_0_sva_dfm_mx0 = MUX_v_10_2_2(P3_0_sva, asn_70_mx0w1, and_24_nl);
  assign or_46_nl = or_dcpl_11 | reg_skip_ftd_1_0 | (~ epsilon_rsci_idat);
  assign P3_1_sva_dfm_mx0 = MUX_v_10_2_2(asn_70_mx0w1, P3_1_sva, or_46_nl);
  assign nl_if_1_acc_5_psp_sva_1 = ({if_1_acc_10_psp_sva_1 , (sum1_29_8_1_sva_1[16:0])
      , 1'b0}) + conv_s2s_23_24({(~ if_1_acc_9_itm) , (~ (sum2_29_8_1_sva_1[17:0]))})
      + 24'b000000000000000000000001;
  assign if_1_acc_5_psp_sva_1 = nl_if_1_acc_5_psp_sva_1[23:0];
  assign nl_acc_tmp = count_sva + 10'b0000000001;
  assign acc_tmp = nl_acc_tmp[9:0];
  assign and_21_rgt = (reg_skip_ftd | reg_skip_ftd_1_1 | reg_skip_ftd_1_0) & nand_27_cse;
  assign nl_if_1_acc_9_itm = conv_s2s_4_5(sum2_29_8_1_sva_1[21:18]) + 5'b11111;
  assign if_1_acc_9_itm = nl_if_1_acc_9_itm[4:0];
  assign or_dcpl_9 = ~(epsilon_rsci_idat & shift_reg_1_0_sva);
  assign or_dcpl_11 = reg_skip_ftd | reg_skip_ftd_1_1;
  assign or_dcpl_12 = or_dcpl_11 | reg_skip_ftd_1_0;
  assign or_dcpl_17 = epsilon_rsci_idat | shift_reg_1_0_sva;
  assign or_dcpl_23 = epsilon_rsci_idat | (~ shift_reg_1_0_sva);
  assign or_dcpl_29 = (~ epsilon_rsci_idat) | shift_reg_1_0_sva;
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P1_0_sva <= 10'b0000000000;
    end
    else if ( ~((shift_reg_1_1_sva | shift_reg_1_0_sva | reg_skip_ftd_1_0 | epsilon_rsci_idat
        | reg_skip_ftd_1_1 | reg_skip_ftd) & nand_27_cse) ) begin
      P1_0_sva <= MUX_v_10_2_2(10'b0000000000, P1_0_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P1_1_sva <= 10'b0000000000;
    end
    else if ( ~((shift_reg_1_1_sva | shift_reg_1_0_sva | reg_skip_ftd_1_0 | (~ epsilon_rsci_idat)
        | reg_skip_ftd_1_1 | reg_skip_ftd) & nand_27_cse) ) begin
      P1_1_sva <= MUX_v_10_2_2(10'b0000000000, P1_1_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P1_2_sva <= 10'b0000000000;
    end
    else if ( ~((shift_reg_1_1_sva | (~ shift_reg_1_0_sva) | reg_skip_ftd_1_0 | epsilon_rsci_idat
        | reg_skip_ftd_1_1 | reg_skip_ftd) & nand_27_cse) ) begin
      P1_2_sva <= MUX_v_10_2_2(10'b0000000000, P1_2_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P1_3_sva <= 10'b0000000000;
    end
    else if ( ~((shift_reg_1_1_sva | (~ shift_reg_1_0_sva) | reg_skip_ftd_1_0 | (~
        epsilon_rsci_idat) | reg_skip_ftd_1_1 | reg_skip_ftd) & nand_27_cse) ) begin
      P1_3_sva <= MUX_v_10_2_2(10'b0000000000, P1_3_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P1_4_sva <= 10'b0000000000;
    end
    else if ( ~(((~ shift_reg_1_1_sva) | shift_reg_1_0_sva | reg_skip_ftd_1_0 | epsilon_rsci_idat
        | reg_skip_ftd_1_1 | reg_skip_ftd) & nand_27_cse) ) begin
      P1_4_sva <= MUX_v_10_2_2(10'b0000000000, P1_4_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P1_5_sva <= 10'b0000000000;
    end
    else if ( ~(((~ shift_reg_1_1_sva) | shift_reg_1_0_sva | reg_skip_ftd_1_0 | (~
        epsilon_rsci_idat) | reg_skip_ftd_1_1 | reg_skip_ftd) & nand_27_cse) ) begin
      P1_5_sva <= MUX_v_10_2_2(10'b0000000000, P1_5_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P1_6_sva <= 10'b0000000000;
    end
    else if ( ~(((~ shift_reg_1_1_sva) | (~ shift_reg_1_0_sva) | reg_skip_ftd_1_0
        | epsilon_rsci_idat | reg_skip_ftd_1_1 | reg_skip_ftd) & nand_27_cse) ) begin
      P1_6_sva <= MUX_v_10_2_2(10'b0000000000, P1_6_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P1_7_sva <= 10'b0000000000;
    end
    else if ( ~(((~ shift_reg_1_1_sva) | (~ shift_reg_1_0_sva) | reg_skip_ftd_1_0
        | (~ epsilon_rsci_idat) | reg_skip_ftd_1_1 | reg_skip_ftd) & nand_27_cse)
        ) begin
      P1_7_sva <= MUX_v_10_2_2(10'b0000000000, P1_7_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P2_3_sva <= 10'b0000000000;
    end
    else if ( (~(reg_skip_ftd | reg_skip_ftd_1_1 | reg_skip_ftd_1_0 | (~ epsilon_rsci_idat)
        | (~ shift_reg_1_0_sva))) | and_45_cse ) begin
      P2_3_sva <= MUX_v_10_2_2(10'b0000000000, P2_3_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P2_0_sva <= 10'b0000000000;
    end
    else if ( ~((reg_skip_ftd | reg_skip_ftd_1_1 | reg_skip_ftd_1_0 | epsilon_rsci_idat
        | shift_reg_1_0_sva) & nand_27_cse) ) begin
      P2_0_sva <= MUX_v_10_2_2(10'b0000000000, P2_0_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P2_2_sva <= 10'b0000000000;
    end
    else if ( (~(reg_skip_ftd | reg_skip_ftd_1_1 | reg_skip_ftd_1_0 | epsilon_rsci_idat
        | (~ shift_reg_1_0_sva))) | and_45_cse ) begin
      P2_2_sva <= MUX_v_10_2_2(10'b0000000000, P2_2_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P2_1_sva <= 10'b0000000000;
    end
    else if ( ~((reg_skip_ftd | reg_skip_ftd_1_1 | reg_skip_ftd_1_0 | (~ epsilon_rsci_idat)
        | shift_reg_1_0_sva) & nand_27_cse) ) begin
      P2_1_sva <= MUX_v_10_2_2(10'b0000000000, P2_1_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      shift_reg_1_1_sva <= 1'b0;
      shift_reg_1_0_sva <= 1'b0;
      reg_epsilon_triosy_obj_ld_cse <= 1'b0;
      valid_rsci_idat <= 1'b0;
      is_random_rsci_idat <= 1'b0;
      count_sva <= 10'b0000000000;
    end
    else begin
      shift_reg_1_1_sva <= shift_reg_1_0_sva;
      shift_reg_1_0_sva <= epsilon_rsci_idat;
      reg_epsilon_triosy_obj_ld_cse <= 1'b1;
      valid_rsci_idat <= ~ nand_27_cse;
      is_random_rsci_idat <= (readslicef_25_1_24(if_1_acc_nl)) & if_1_land_lpi_1_dfm_mx0
          & (~ nand_27_cse);
      count_sva <= acc_tmp;
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P3_0_sva <= 10'b0000000000;
    end
    else if ( ~((epsilon_rsci_idat | reg_skip_ftd_1_0 | reg_skip_ftd_1_1 | reg_skip_ftd)
        & nand_27_cse) ) begin
      P3_0_sva <= MUX_v_10_2_2(10'b0000000000, P3_0_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      P3_1_sva <= 10'b0000000000;
    end
    else if ( ~(((~ epsilon_rsci_idat) | reg_skip_ftd_1_0 | reg_skip_ftd_1_1 | reg_skip_ftd)
        & nand_27_cse) ) begin
      P3_1_sva <= MUX_v_10_2_2(10'b0000000000, P3_1_sva_dfm_mx0, nand_27_cse);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      if_1_land_lpi_1_dfm <= 1'b0;
    end
    else if ( ((acc_tmp!=10'b1111111111)) & (count_sva==10'b1111111111) ) begin
      if_1_land_lpi_1_dfm <= if_1_land_lpi_1_dfm_mx0;
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      reg_skip_ftd <= 1'b0;
      reg_skip_ftd_1_1 <= 1'b1;
      reg_skip_ftd_1_0 <= 1'b1;
    end
    else if ( skip_static_init_or_ssc ) begin
      reg_skip_ftd <= ~ and_21_rgt;
      reg_skip_ftd_1_1 <= (~(reg_skip_ftd_1_0 ^ reg_skip_ftd_1_1)) & and_21_rgt;
      reg_skip_ftd_1_0 <= (~ reg_skip_ftd_1_0) & and_21_rgt;
    end
  end
  assign nl_if_1_acc_15_nl = conv_u2s_18_19(if_1_acc_1_itm_20_1_1[19:2]) + 19'b1101111110110110011;
  assign if_1_acc_15_nl = nl_if_1_acc_15_nl[18:0];
  assign nl_if_1_acc_14_nl = ({(~ if_1_acc_9_itm) , (~ (sum2_29_8_1_sva_1[17:0]))
      , 1'b1}) + conv_s2s_21_24({if_1_acc_15_nl , (if_1_acc_1_itm_20_1_1[1:0])});
  assign if_1_acc_14_nl = nl_if_1_acc_14_nl[23:0];
  assign nl_if_1_acc_nl = conv_s2s_24_25(if_1_acc_14_nl) + conv_s2s_24_25({if_1_acc_10_psp_sva_1
      , (sum1_29_8_1_sva_1[16:0]) , 1'b0});
  assign if_1_acc_nl = nl_if_1_acc_nl[24:0];

  function automatic  MUX_s_1_2_2;
    input  input_0;
    input  input_1;
    input  sel;
    reg  result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [9:0] MUX_v_10_2_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input  sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function automatic [9:0] MUX_v_10_4_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input [9:0] input_2;
    input [9:0] input_3;
    input [1:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      2'b00 : begin
        result = input_0;
      end
      2'b01 : begin
        result = input_1;
      end
      2'b10 : begin
        result = input_2;
      end
      default : begin
        result = input_3;
      end
    endcase
    MUX_v_10_4_2 = result;
  end
  endfunction


  function automatic [9:0] MUX_v_10_8_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input [9:0] input_2;
    input [9:0] input_3;
    input [9:0] input_4;
    input [9:0] input_5;
    input [9:0] input_6;
    input [9:0] input_7;
    input [2:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      3'b000 : begin
        result = input_0;
      end
      3'b001 : begin
        result = input_1;
      end
      3'b010 : begin
        result = input_2;
      end
      3'b011 : begin
        result = input_3;
      end
      3'b100 : begin
        result = input_4;
      end
      3'b101 : begin
        result = input_5;
      end
      3'b110 : begin
        result = input_6;
      end
      default : begin
        result = input_7;
      end
    endcase
    MUX_v_10_8_2 = result;
  end
  endfunction


  function automatic [19:0] readslicef_21_20_1;
    input [20:0] vector;
    reg [20:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_21_20_1 = tmp[19:0];
  end
  endfunction


  function automatic [0:0] readslicef_24_1_23;
    input [23:0] vector;
    reg [23:0] tmp;
  begin
    tmp = vector >> 23;
    readslicef_24_1_23 = tmp[0:0];
  end
  endfunction


  function automatic [0:0] readslicef_25_1_24;
    input [24:0] vector;
    reg [24:0] tmp;
  begin
    tmp = vector >> 24;
    readslicef_25_1_24 = tmp[0:0];
  end
  endfunction


  function automatic [4:0] conv_s2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_s2s_4_5 = {vector[3], vector};
  end
  endfunction


  function automatic [5:0] conv_s2s_5_6 ;
    input [4:0]  vector ;
  begin
    conv_s2s_5_6 = {vector[4], vector};
  end
  endfunction


  function automatic [23:0] conv_s2s_21_24 ;
    input [20:0]  vector ;
  begin
    conv_s2s_21_24 = {{3{vector[20]}}, vector};
  end
  endfunction


  function automatic [23:0] conv_s2s_23_24 ;
    input [22:0]  vector ;
  begin
    conv_s2s_23_24 = {vector[22], vector};
  end
  endfunction


  function automatic [24:0] conv_s2s_24_25 ;
    input [23:0]  vector ;
  begin
    conv_s2s_24_25 = {vector[23], vector};
  end
  endfunction


  function automatic [18:0] conv_u2s_18_19 ;
    input [17:0]  vector ;
  begin
    conv_u2s_18_19 =  {1'b0, vector};
  end
  endfunction


  function automatic [23:0] conv_u2s_23_24 ;
    input [22:0]  vector ;
  begin
    conv_u2s_23_24 =  {1'b0, vector};
  end
  endfunction


  function automatic [20:0] conv_u2u_20_21 ;
    input [19:0]  vector ;
  begin
    conv_u2u_20_21 = {1'b0, vector};
  end
  endfunction


  function automatic [21:0] conv_u2u_20_22 ;
    input [19:0]  vector ;
  begin
    conv_u2u_20_22 = {{2{1'b0}}, vector};
  end
  endfunction

endmodule