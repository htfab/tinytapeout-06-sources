module overlapping_core (
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
  wire nand_tmp;
  wire [9:0] if_acc_tmp;
  wire [10:0] nl_if_acc_tmp;
  wire or_dcpl;
  wire [9:0] W_obs_sva_dfm_mx0;
  reg [19:0] count_sva;
  wire [20:0] nl_count_sva;
  wire unequal_tmp_2;
  reg [9:0] W_obs_sva;
  reg reg_epsilon_triosy_obj_ld_cse;
  reg reg_shift_reg_1_cse;
  wire [9:0] z_out;
  wire [10:0] nl_z_out;
  reg [9:0] nu_2_sva;
  reg [9:0] nu_3_sva;
  reg [9:0] nu_1_sva;
  reg [9:0] nu_4_sva;
  reg [9:0] nu_0_sva;
  reg [9:0] nu_5_sva;
  reg shift_reg_0_sva;
  reg if_asn_itm;
  reg if_asn_1_itm;
  reg if_asn_2_itm;
  reg if_asn_3_itm;
  reg if_asn_4_itm;
  reg if_asn_5_itm;
  wire [9:0] nu_3_sva_dfm_1_mx0;
  wire [9:0] nu_2_sva_dfm_1_mx0;
  wire [19:0] if_2_for_4_mul_atp_sva_1;
  wire [19:0] if_2_for_5_mul_atp_sva_1;
  wire [22:0] if_2_for_acc_39_sdt_1;
  wire [24:0] nl_if_2_for_acc_39_sdt_1;
  wire [21:0] if_2_for_acc_51_psp_1;
  wire [22:0] nl_if_2_for_acc_51_psp_1;
  wire [22:0] if_2_for_acc_50_sdt_1;
  wire [23:0] nl_if_2_for_acc_50_sdt_1;
  wire [19:0] if_2_for_1_mul_atp_sva_1;
  wire [28:0] if_2_for_acc_8_sdt_1;
  wire [30:0] nl_if_2_for_acc_8_sdt_1;
  wire [19:0] if_2_for_2_mul_atp_sva_1;
  wire [22:0] if_2_for_acc_52_psp_1;
  wire [24:0] nl_if_2_for_acc_52_psp_1;
  wire [23:0] if_2_for_acc_11_sdt_1;
  wire [25:0] nl_if_2_for_acc_11_sdt_1;
  wire [19:0] if_2_for_3_mul_atp_sva_1;
  wire [22:0] if_2_for_acc_45_sdt_1;
  wire [23:0] nl_if_2_for_acc_45_sdt_1;
  wire [22:0] if_2_for_acc_56_psp_1;
  wire [24:0] nl_if_2_for_acc_56_psp_1;
  wire [21:0] if_2_for_acc_53_sdt_1;
  wire [22:0] nl_if_2_for_acc_53_sdt_1;
  wire [21:0] if_2_for_slc_if_2_for_acc_22_24_3_slc_1;
  wire [22:0] nl_if_2_for_slc_if_2_for_acc_22_24_3_slc_1;
  wire [25:0] if_2_for_acc_25_itm_33_8;
  wire [26:0] nl_if_2_for_acc_25_itm_33_8;
  wire [9:0] mux_1_cse;
  wire [9:0] mux_3_cse;
  wire [9:0] mux_5_cse;
  wire and_65_cse;
  wire and_66_cse;
  wire [9:0] and_7_cse;
  wire mux_22_cse;
  wire if_1_acc_itm_10;

  wire or_15_nl;
  wire mux_10_nl;
  wire or_3_nl;
  wire or_2_nl;
  wire mux_nl;
  wire nor_20_nl;
  wire nor_21_nl;
  wire or_20_nl;
  wire mux_11_nl;
  wire or_17_nl;
  wire or_16_nl;
  wire mux_20_nl;
  wire nor_22_nl;
  wire nor_23_nl;
  wire or_25_nl;
  wire mux_12_nl;
  wire or_22_nl;
  wire or_21_nl;
  wire mux_21_nl;
  wire nor_24_nl;
  wire nor_25_nl;
  wire or_57_nl;
  wire or_55_nl;
  wire mux_23_nl;
  wire or_61_nl;
  wire or_60_nl;
  wire[20:0] operator_26_22_false_AC_TRN_AC_WRAP_acc_nl;
  wire[21:0] nl_operator_26_22_false_AC_TRN_AC_WRAP_acc_nl;
  wire[25:0] if_2_for_acc_nl;
  wire[28:0] nl_if_2_for_acc_nl;
  wire[29:0] if_2_for_acc_6_nl;
  wire[30:0] nl_if_2_for_acc_6_nl;
  wire[21:0] if_2_for_acc_41_nl;
  wire[22:0] nl_if_2_for_acc_41_nl;
  wire[31:0] if_2_for_acc_2_nl;
  wire[32:0] nl_if_2_for_acc_2_nl;
  wire[20:0] if_2_for_acc_42_nl;
  wire[21:0] nl_if_2_for_acc_42_nl;
  wire[22:0] if_2_for_acc_44_nl;
  wire[23:0] nl_if_2_for_acc_44_nl;
  wire[33:0] if_2_for_acc_3_nl;
  wire[34:0] nl_if_2_for_acc_3_nl;
  wire[21:0] if_2_for_acc_61_nl;
  wire[23:0] nl_if_2_for_acc_61_nl;
  wire[18:0] if_2_for_acc_36_nl;
  wire[19:0] nl_if_2_for_acc_36_nl;
  wire[33:0] if_2_for_acc_5_nl;
  wire[34:0] nl_if_2_for_acc_5_nl;
  wire[20:0] if_2_for_acc_37_nl;
  wire[21:0] nl_if_2_for_acc_37_nl;
  wire[20:0] if_2_for_acc_40_nl;
  wire[21:0] nl_if_2_for_acc_40_nl;
  wire[19:0] and_4_nl;
  wire or_30_nl;
  wire mux_13_nl;
  wire or_29_nl;
  wire or_27_nl;
  wire or_40_nl;
  wire[10:0] if_1_acc_nl;
  wire[11:0] nl_if_1_acc_nl;
  wire[27:0] if_2_for_acc_24_nl;
  wire[28:0] nl_if_2_for_acc_24_nl;
  wire[19:0] if_2_for_acc_35_nl;
  wire[20:0] nl_if_2_for_acc_35_nl;
  wire[9:0] if_1_else_if_1_else_mux1h_1_nl;
  wire if_1_else_if_1_else_nor_1_nl;
  wire if_1_else_and_6_nl;
  wire if_1_else_and_7_nl;
  wire if_1_else_and_8_nl;
  wire if_1_else_and_9_nl;
  wire if_1_else_or_1_nl;

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
  assign or_3_nl = (W_obs_sva[2:0]!=3'b100);
  assign or_2_nl = (if_acc_tmp[2:0]!=3'b100);
  assign mux_10_nl = MUX_s_1_2_2(or_3_nl, or_2_nl, and_66_cse);
  assign or_15_nl = mux_10_nl | or_dcpl;
  assign mux_1_cse = MUX_v_10_2_2(z_out, nu_4_sva, or_15_nl);
  assign and_65_cse = (count_sva[19:10]==10'b1111111111);
  assign and_66_cse = if_asn_itm & if_asn_1_itm & if_asn_2_itm & if_asn_3_itm & if_asn_4_itm
      & if_asn_5_itm & reg_shift_reg_1_cse & shift_reg_0_sva & epsilon_rsci_idat;
  assign or_17_nl = (W_obs_sva[2:0]!=3'b000);
  assign or_16_nl = (if_acc_tmp[2:0]!=3'b000);
  assign mux_11_nl = MUX_s_1_2_2(or_17_nl, or_16_nl, and_66_cse);
  assign or_20_nl = mux_11_nl | or_dcpl;
  assign mux_3_cse = MUX_v_10_2_2(z_out, nu_0_sva, or_20_nl);
  assign or_22_nl = (W_obs_sva[2:0]!=3'b001);
  assign or_21_nl = (if_acc_tmp[2:0]!=3'b001);
  assign mux_12_nl = MUX_s_1_2_2(or_22_nl, or_21_nl, and_66_cse);
  assign or_25_nl = mux_12_nl | or_dcpl;
  assign mux_5_cse = MUX_v_10_2_2(z_out, nu_1_sva, or_25_nl);
  assign and_7_cse = MUX_v_10_2_2(10'b0000000000, z_out, unequal_tmp_2);
  assign or_57_nl = (W_obs_sva[2:0]!=3'b010);
  assign or_55_nl = (if_acc_tmp[2:0]!=3'b010);
  assign mux_22_cse = MUX_s_1_2_2(or_57_nl, or_55_nl, and_66_cse);
  assign or_29_nl = (W_obs_sva[2:0]!=3'b011);
  assign or_27_nl = (if_acc_tmp[2:0]!=3'b011);
  assign mux_13_nl = MUX_s_1_2_2(or_29_nl, or_27_nl, and_66_cse);
  assign or_30_nl = mux_13_nl | or_dcpl;
  assign nu_3_sva_dfm_1_mx0 = MUX_v_10_2_2(z_out, nu_3_sva, or_30_nl);
  assign or_40_nl = mux_22_cse | or_dcpl;
  assign nu_2_sva_dfm_1_mx0 = MUX_v_10_2_2(z_out, nu_2_sva, or_40_nl);
  assign nl_if_acc_tmp = W_obs_sva + 10'b0000000001;
  assign if_acc_tmp = nl_if_acc_tmp[9:0];
  assign W_obs_sva_dfm_mx0 = MUX_v_10_2_2(W_obs_sva, if_acc_tmp, and_66_cse);
  assign nl_if_1_acc_nl = conv_u2u_10_11(~ W_obs_sva_dfm_mx0) + 11'b10000000101;
  assign if_1_acc_nl = nl_if_1_acc_nl[10:0];
  assign if_1_acc_itm_10 = readslicef_11_1_10(if_1_acc_nl);
  assign nl_if_2_for_acc_35_nl = (~ if_2_for_4_mul_atp_sva_1) + conv_u2u_17_20(if_2_for_slc_if_2_for_acc_22_24_3_slc_1[21:5]);
  assign if_2_for_acc_35_nl = nl_if_2_for_acc_35_nl[19:0];
  assign nl_if_2_for_acc_24_nl = ({8'b11110111 , (~ if_2_for_4_mul_atp_sva_1)}) +
      ({if_2_for_acc_35_nl , (if_2_for_slc_if_2_for_acc_22_24_3_slc_1[4:0]) , 3'b001});
  assign if_2_for_acc_24_nl = nl_if_2_for_acc_24_nl[27:0];
  assign nl_if_2_for_acc_25_itm_33_8 = conv_u2u_25_26({if_2_for_4_mul_atp_sva_1 ,
      5'b00001}) + conv_s2u_21_26({1'b1 , (readslicef_28_20_8(if_2_for_acc_24_nl))});
  assign if_2_for_acc_25_itm_33_8 = nl_if_2_for_acc_25_itm_33_8[25:0];
  assign if_2_for_4_mul_atp_sva_1 = nu_3_sva_dfm_1_mx0 * nu_3_sva_dfm_1_mx0;
  assign if_2_for_5_mul_atp_sva_1 = mux_1_cse * mux_1_cse;
  assign nl_if_2_for_acc_39_sdt_1 = conv_u2u_22_23({if_2_for_5_mul_atp_sva_1 , 2'b01})
      + conv_u2u_20_23(~ if_2_for_5_mul_atp_sva_1) + conv_u2u_18_23(if_2_for_acc_51_psp_1[21:4]);
  assign if_2_for_acc_39_sdt_1 = nl_if_2_for_acc_39_sdt_1[22:0];
  assign nl_if_2_for_acc_51_psp_1 = ({if_2_for_5_mul_atp_sva_1 , 2'b01}) + conv_u2u_21_22(if_2_for_acc_50_sdt_1[22:2]);
  assign if_2_for_acc_51_psp_1 = nl_if_2_for_acc_51_psp_1[21:0];
  assign nl_if_2_for_acc_50_sdt_1 = conv_u2u_22_23({(~ if_2_for_5_mul_atp_sva_1)
      , 2'b01}) + conv_u2u_20_23(~ if_2_for_5_mul_atp_sva_1);
  assign if_2_for_acc_50_sdt_1 = nl_if_2_for_acc_50_sdt_1[22:0];
  assign if_2_for_1_mul_atp_sva_1 = mux_3_cse * mux_3_cse;
  assign nl_if_2_for_acc_8_sdt_1 = conv_u2u_28_29({(~ if_2_for_1_mul_atp_sva_1) ,
      8'b01000000}) + conv_u2u_26_29({(~ if_2_for_1_mul_atp_sva_1) , 6'b000001})
      + conv_u2u_20_29(~ if_2_for_1_mul_atp_sva_1);
  assign if_2_for_acc_8_sdt_1 = nl_if_2_for_acc_8_sdt_1[28:0];
  assign if_2_for_2_mul_atp_sva_1 = mux_5_cse * mux_5_cse;
  assign nl_if_2_for_acc_52_psp_1 = conv_u2u_22_23({(~ if_2_for_2_mul_atp_sva_1)
      , 2'b01}) + conv_u2u_20_23(~ if_2_for_2_mul_atp_sva_1) + conv_u2u_17_23(if_2_for_acc_11_sdt_1[23:7]);
  assign if_2_for_acc_52_psp_1 = nl_if_2_for_acc_52_psp_1[22:0];
  assign nl_if_2_for_acc_11_sdt_1 = ({if_2_for_2_mul_atp_sva_1 , 4'b0100}) + conv_u2u_22_24({(~
      if_2_for_2_mul_atp_sva_1) , 2'b01}) + conv_u2u_20_24(~ if_2_for_2_mul_atp_sva_1);
  assign if_2_for_acc_11_sdt_1 = nl_if_2_for_acc_11_sdt_1[23:0];
  assign if_2_for_3_mul_atp_sva_1 = nu_2_sva_dfm_1_mx0 * nu_2_sva_dfm_1_mx0;
  assign nl_if_2_for_acc_45_sdt_1 = conv_u2u_22_23({if_2_for_3_mul_atp_sva_1 , 2'b01})
      + conv_u2u_21_23(if_2_for_acc_56_psp_1[22:2]);
  assign if_2_for_acc_45_sdt_1 = nl_if_2_for_acc_45_sdt_1[22:0];
  assign nl_if_2_for_acc_56_psp_1 = conv_u2u_22_23({(~ if_2_for_3_mul_atp_sva_1)
      , 2'b01}) + conv_u2u_20_23(~ if_2_for_3_mul_atp_sva_1) + conv_u2u_18_23(if_2_for_acc_53_sdt_1[21:4]);
  assign if_2_for_acc_56_psp_1 = nl_if_2_for_acc_56_psp_1[22:0];
  assign nl_if_2_for_acc_53_sdt_1 = ({if_2_for_3_mul_atp_sva_1 , 2'b01}) + conv_u2u_20_22(~
      if_2_for_3_mul_atp_sva_1);
  assign if_2_for_acc_53_sdt_1 = nl_if_2_for_acc_53_sdt_1[21:0];
  assign nl_if_2_for_slc_if_2_for_acc_22_24_3_slc_1 = ({if_2_for_4_mul_atp_sva_1
      , 2'b01}) + conv_u2u_20_22(~ if_2_for_4_mul_atp_sva_1);
  assign if_2_for_slc_if_2_for_acc_22_24_3_slc_1 = nl_if_2_for_slc_if_2_for_acc_22_24_3_slc_1[21:0];
  assign unequal_tmp_2 = ~((count_sva==20'b11111111111111111111));
  assign nand_tmp = ~((count_sva[9:0]==10'b1111111111));
  assign or_dcpl = nand_tmp | if_1_acc_itm_10;
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      nu_4_sva <= 10'b0000000000;
    end
    else if ( (and_65_cse | mux_nl) & (count_sva[9:0]==10'b1111111111) ) begin
      nu_4_sva <= MUX_v_10_2_2(10'b0000000000, mux_1_cse, unequal_tmp_2);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      nu_0_sva <= 10'b0000000000;
    end
    else if ( (and_65_cse | mux_20_nl) & (count_sva[9:0]==10'b1111111111) ) begin
      nu_0_sva <= MUX_v_10_2_2(10'b0000000000, mux_3_cse, unequal_tmp_2);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      nu_1_sva <= 10'b0000000000;
    end
    else if ( (and_65_cse | mux_21_nl) & (count_sva[9:0]==10'b1111111111) ) begin
      nu_1_sva <= MUX_v_10_2_2(10'b0000000000, mux_5_cse, unequal_tmp_2);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      nu_2_sva <= 10'b0000000000;
    end
    else if ( (and_65_cse | (~(if_1_acc_itm_10 | mux_22_cse))) & (count_sva[9:0]==10'b1111111111)
        ) begin
      nu_2_sva <= and_7_cse;
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      nu_3_sva <= 10'b0000000000;
    end
    else if ( (and_65_cse | (~(if_1_acc_itm_10 | mux_23_nl))) & (count_sva[9:0]==10'b1111111111)
        ) begin
      nu_3_sva <= and_7_cse;
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      nu_5_sva <= 10'b0000000000;
    end
    else if ( ((W_obs_sva_dfm_mx0[2:0]==3'b101) & (~(if_1_acc_itm_10 | nand_tmp)))
        | (if_1_acc_itm_10 & (~ nand_tmp)) ) begin
      nu_5_sva <= z_out;
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      W_obs_sva <= 10'b0000000000;
    end
    else if ( ((count_sva[9:0]==10'b1111111111)) | and_66_cse ) begin
      W_obs_sva <= MUX_v_10_2_2(10'b0000000000, W_obs_sva_dfm_mx0, nand_tmp);
    end
  end
  always @(posedge clk) begin
    if ( ~ rst_n ) begin
      reg_epsilon_triosy_obj_ld_cse <= 1'b0;
      valid_rsci_idat <= 1'b0;
      is_random_rsci_idat <= 1'b0;
      count_sva <= 20'b00000000000000000000;
      if_asn_itm <= 1'b0;
      if_asn_1_itm <= 1'b0;
      if_asn_2_itm <= 1'b0;
      if_asn_3_itm <= 1'b0;
      if_asn_4_itm <= 1'b0;
      if_asn_5_itm <= 1'b0;
      reg_shift_reg_1_cse <= 1'b0;
      shift_reg_0_sva <= 1'b0;
    end
    else begin
      reg_epsilon_triosy_obj_ld_cse <= 1'b1;
      valid_rsci_idat <= ~ unequal_tmp_2;
      is_random_rsci_idat <= (readslicef_21_1_20(operator_26_22_false_AC_TRN_AC_WRAP_acc_nl))
          & (~ unequal_tmp_2);
      count_sva <= nl_count_sva[19:0];
      if_asn_itm <= if_asn_1_itm;
      if_asn_1_itm <= if_asn_2_itm;
      if_asn_2_itm <= if_asn_3_itm;
      if_asn_3_itm <= if_asn_4_itm;
      if_asn_4_itm <= if_asn_5_itm;
      if_asn_5_itm <= reg_shift_reg_1_cse;
      reg_shift_reg_1_cse <= shift_reg_0_sva;
      shift_reg_0_sva <= epsilon_rsci_idat;
    end
  end
  assign nor_20_nl = ~((W_obs_sva[2:0]!=3'b100) | if_1_acc_itm_10);
  assign nor_21_nl = ~((if_acc_tmp[2:0]!=3'b100) | if_1_acc_itm_10);
  assign mux_nl = MUX_s_1_2_2(nor_20_nl, nor_21_nl, and_66_cse);
  assign nor_22_nl = ~((W_obs_sva[2:0]!=3'b000) | if_1_acc_itm_10);
  assign nor_23_nl = ~((if_acc_tmp[2:0]!=3'b000) | if_1_acc_itm_10);
  assign mux_20_nl = MUX_s_1_2_2(nor_22_nl, nor_23_nl, and_66_cse);
  assign nor_24_nl = ~((W_obs_sva[2:0]!=3'b001) | if_1_acc_itm_10);
  assign nor_25_nl = ~((if_acc_tmp[2:0]!=3'b001) | if_1_acc_itm_10);
  assign mux_21_nl = MUX_s_1_2_2(nor_24_nl, nor_25_nl, and_66_cse);
  assign or_61_nl = (W_obs_sva[2:0]!=3'b011);
  assign or_60_nl = (if_acc_tmp[2:0]!=3'b011);
  assign mux_23_nl = MUX_s_1_2_2(or_61_nl, or_60_nl, and_66_cse);
  assign nl_if_2_for_acc_41_nl = ({if_2_for_1_mul_atp_sva_1 , 2'b01}) + conv_u2u_21_22(if_2_for_acc_8_sdt_1[28:8]);
  assign if_2_for_acc_41_nl = nl_if_2_for_acc_41_nl[21:0];
  assign nl_if_2_for_acc_6_nl = ({if_2_for_acc_41_nl , (if_2_for_acc_8_sdt_1[7:0])})
      + ({14'b10101111110000 , (if_2_for_1_mul_atp_sva_1[19:4])});
  assign if_2_for_acc_6_nl = nl_if_2_for_acc_6_nl[29:0];
  assign nl_if_2_for_acc_42_nl = conv_u2u_20_21({13'b1010111101100 , (if_2_for_2_mul_atp_sva_1[19:13])})
      + ({(if_2_for_2_mul_atp_sva_1[18:0]) , 2'b01});
  assign if_2_for_acc_42_nl = nl_if_2_for_acc_42_nl[20:0];
  assign nl_if_2_for_acc_44_nl = conv_u2u_22_23({(~ if_2_for_2_mul_atp_sva_1) , 2'b01})
      + conv_u2u_21_23(if_2_for_acc_52_psp_1[22:2]);
  assign if_2_for_acc_44_nl = nl_if_2_for_acc_44_nl[22:0];
  assign nl_if_2_for_acc_2_nl = ({if_2_for_acc_42_nl , (if_2_for_2_mul_atp_sva_1[12:2])})
      + ({if_2_for_acc_44_nl , (if_2_for_acc_52_psp_1[1:0]) , (if_2_for_acc_11_sdt_1[6:0])});
  assign if_2_for_acc_2_nl = nl_if_2_for_acc_2_nl[31:0];
  assign nl_if_2_for_acc_61_nl = ({(if_2_for_3_mul_atp_sva_1[18:0]) , 3'b001}) +
      conv_u2u_20_22(~ if_2_for_3_mul_atp_sva_1) + conv_u2u_19_22(if_2_for_acc_45_sdt_1[22:4]);
  assign if_2_for_acc_61_nl = nl_if_2_for_acc_61_nl[21:0];
  assign nl_if_2_for_acc_3_nl = ({if_2_for_acc_61_nl , (if_2_for_acc_45_sdt_1[3:0])
      , (if_2_for_acc_56_psp_1[1:0]) , (if_2_for_acc_53_sdt_1[3:0]) , 2'b01}) + ({14'b10111010111011
      , (~ if_2_for_3_mul_atp_sva_1)});
  assign if_2_for_acc_3_nl = nl_if_2_for_acc_3_nl[33:0];
  assign nl_if_2_for_acc_36_nl = (if_2_for_acc_25_itm_33_8[25:7]) + (if_2_for_4_mul_atp_sva_1[18:0]);
  assign if_2_for_acc_36_nl = nl_if_2_for_acc_36_nl[18:0];
  assign nl_if_2_for_acc_37_nl = conv_u2u_20_21({13'b1111011101011 , (~ (if_2_for_5_mul_atp_sva_1[19:13]))})
      + ({(if_2_for_5_mul_atp_sva_1[17:0]) , 3'b001});
  assign if_2_for_acc_37_nl = nl_if_2_for_acc_37_nl[20:0];
  assign nl_if_2_for_acc_40_nl = conv_u2u_20_21(~ if_2_for_5_mul_atp_sva_1) + conv_u2u_18_21(if_2_for_acc_39_sdt_1[22:5]);
  assign if_2_for_acc_40_nl = nl_if_2_for_acc_40_nl[20:0];
  assign nl_if_2_for_acc_5_nl = ({if_2_for_acc_37_nl , (~ (if_2_for_5_mul_atp_sva_1[12:0]))})
      + ({if_2_for_acc_40_nl , (if_2_for_acc_39_sdt_1[4:0]) , (if_2_for_acc_51_psp_1[3:0])
      , (if_2_for_acc_50_sdt_1[1:0]) , 2'b01});
  assign if_2_for_acc_5_nl = nl_if_2_for_acc_5_nl[33:0];
  assign nl_if_2_for_acc_nl = (readslicef_30_26_4(if_2_for_acc_6_nl)) + (readslicef_32_26_6(if_2_for_acc_2_nl))
      + (readslicef_34_26_8(if_2_for_acc_3_nl)) + ({if_2_for_acc_36_nl , (if_2_for_acc_25_itm_33_8[6:0])})
      + (readslicef_34_26_8(if_2_for_acc_5_nl));
  assign if_2_for_acc_nl = nl_if_2_for_acc_nl[25:0];
  assign nl_operator_26_22_false_AC_TRN_AC_WRAP_acc_nl = conv_u2u_20_21(readslicef_26_20_6(if_2_for_acc_nl))
      + 21'b110111111100001110101;
  assign operator_26_22_false_AC_TRN_AC_WRAP_acc_nl = nl_operator_26_22_false_AC_TRN_AC_WRAP_acc_nl[20:0];
  assign and_4_nl = MUX_v_20_2_2(20'b00000000000000000000, count_sva, unequal_tmp_2);
  assign nl_count_sva  = and_4_nl + 20'b00000000000000000001;
  assign if_1_else_if_1_else_nor_1_nl = ~((W_obs_sva_dfm_mx0[2:0]!=3'b000) | if_1_acc_itm_10);
  assign if_1_else_and_6_nl = (W_obs_sva_dfm_mx0[2:0]==3'b001) & (~ if_1_acc_itm_10);
  assign if_1_else_and_7_nl = (W_obs_sva_dfm_mx0[2:0]==3'b010) & (~ if_1_acc_itm_10);
  assign if_1_else_and_8_nl = (W_obs_sva_dfm_mx0[2:0]==3'b011) & (~ if_1_acc_itm_10);
  assign if_1_else_and_9_nl = (W_obs_sva_dfm_mx0[2:0]==3'b100) & (~ if_1_acc_itm_10);
  assign if_1_else_or_1_nl = ((W_obs_sva_dfm_mx0[2:0]==3'b101)) | if_1_acc_itm_10;
  assign if_1_else_if_1_else_mux1h_1_nl = MUX1HOT_v_10_6_2(nu_0_sva, nu_1_sva, nu_2_sva,
      nu_3_sva, nu_4_sva, nu_5_sva, {if_1_else_if_1_else_nor_1_nl , if_1_else_and_6_nl
      , if_1_else_and_7_nl , if_1_else_and_8_nl , if_1_else_and_9_nl , if_1_else_or_1_nl});
  assign nl_z_out = if_1_else_if_1_else_mux1h_1_nl + 10'b0000000001;
  assign z_out = nl_z_out[9:0];

  function automatic [9:0] MUX1HOT_v_10_6_2;
    input [9:0] input_5;
    input [9:0] input_4;
    input [9:0] input_3;
    input [9:0] input_2;
    input [9:0] input_1;
    input [9:0] input_0;
    input [5:0] sel;
    reg [9:0] result;
  begin
    result = input_0 & {10{sel[0]}};
    result = result | (input_1 & {10{sel[1]}});
    result = result | (input_2 & {10{sel[2]}});
    result = result | (input_3 & {10{sel[3]}});
    result = result | (input_4 & {10{sel[4]}});
    result = result | (input_5 & {10{sel[5]}});
    MUX1HOT_v_10_6_2 = result;
  end
  endfunction


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


  function automatic [19:0] MUX_v_20_2_2;
    input [19:0] input_0;
    input [19:0] input_1;
    input  sel;
    reg [19:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_20_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_11_1_10;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 10;
    readslicef_11_1_10 = tmp[0:0];
  end
  endfunction


  function automatic [0:0] readslicef_21_1_20;
    input [20:0] vector;
    reg [20:0] tmp;
  begin
    tmp = vector >> 20;
    readslicef_21_1_20 = tmp[0:0];
  end
  endfunction


  function automatic [19:0] readslicef_26_20_6;
    input [25:0] vector;
    reg [25:0] tmp;
  begin
    tmp = vector >> 6;
    readslicef_26_20_6 = tmp[19:0];
  end
  endfunction


  function automatic [19:0] readslicef_28_20_8;
    input [27:0] vector;
    reg [27:0] tmp;
  begin
    tmp = vector >> 8;
    readslicef_28_20_8 = tmp[19:0];
  end
  endfunction


  function automatic [25:0] readslicef_30_26_4;
    input [29:0] vector;
    reg [29:0] tmp;
  begin
    tmp = vector >> 4;
    readslicef_30_26_4 = tmp[25:0];
  end
  endfunction


  function automatic [25:0] readslicef_32_26_6;
    input [31:0] vector;
    reg [31:0] tmp;
  begin
    tmp = vector >> 6;
    readslicef_32_26_6 = tmp[25:0];
  end
  endfunction


  function automatic [25:0] readslicef_34_26_8;
    input [33:0] vector;
    reg [33:0] tmp;
  begin
    tmp = vector >> 8;
    readslicef_34_26_8 = tmp[25:0];
  end
  endfunction


  function automatic [25:0] conv_s2u_21_26 ;
    input [20:0]  vector ;
  begin
    conv_s2u_21_26 = {{5{vector[20]}}, vector};
  end
  endfunction


  function automatic [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function automatic [19:0] conv_u2u_17_20 ;
    input [16:0]  vector ;
  begin
    conv_u2u_17_20 = {{3{1'b0}}, vector};
  end
  endfunction


  function automatic [22:0] conv_u2u_17_23 ;
    input [16:0]  vector ;
  begin
    conv_u2u_17_23 = {{6{1'b0}}, vector};
  end
  endfunction


  function automatic [20:0] conv_u2u_18_21 ;
    input [17:0]  vector ;
  begin
    conv_u2u_18_21 = {{3{1'b0}}, vector};
  end
  endfunction


  function automatic [22:0] conv_u2u_18_23 ;
    input [17:0]  vector ;
  begin
    conv_u2u_18_23 = {{5{1'b0}}, vector};
  end
  endfunction


  function automatic [21:0] conv_u2u_19_22 ;
    input [18:0]  vector ;
  begin
    conv_u2u_19_22 = {{3{1'b0}}, vector};
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


  function automatic [22:0] conv_u2u_20_23 ;
    input [19:0]  vector ;
  begin
    conv_u2u_20_23 = {{3{1'b0}}, vector};
  end
  endfunction


  function automatic [23:0] conv_u2u_20_24 ;
    input [19:0]  vector ;
  begin
    conv_u2u_20_24 = {{4{1'b0}}, vector};
  end
  endfunction


  function automatic [28:0] conv_u2u_20_29 ;
    input [19:0]  vector ;
  begin
    conv_u2u_20_29 = {{9{1'b0}}, vector};
  end
  endfunction


  function automatic [21:0] conv_u2u_21_22 ;
    input [20:0]  vector ;
  begin
    conv_u2u_21_22 = {1'b0, vector};
  end
  endfunction


  function automatic [22:0] conv_u2u_21_23 ;
    input [20:0]  vector ;
  begin
    conv_u2u_21_23 = {{2{1'b0}}, vector};
  end
  endfunction


  function automatic [22:0] conv_u2u_22_23 ;
    input [21:0]  vector ;
  begin
    conv_u2u_22_23 = {1'b0, vector};
  end
  endfunction


  function automatic [23:0] conv_u2u_22_24 ;
    input [21:0]  vector ;
  begin
    conv_u2u_22_24 = {{2{1'b0}}, vector};
  end
  endfunction


  function automatic [25:0] conv_u2u_25_26 ;
    input [24:0]  vector ;
  begin
    conv_u2u_25_26 = {1'b0, vector};
  end
  endfunction


  function automatic [28:0] conv_u2u_26_29 ;
    input [25:0]  vector ;
  begin
    conv_u2u_26_29 = {{3{1'b0}}, vector};
  end
  endfunction


  function automatic [28:0] conv_u2u_28_29 ;
    input [27:0]  vector ;
  begin
    conv_u2u_28_29 = {1'b0, vector};
  end
  endfunction

endmodule