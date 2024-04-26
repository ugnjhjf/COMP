// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Apr 16 10:16:40 2024
// Host        : DESKTOP-LAOKQO9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adderrr_sim_netlist.v
// Design      : adderrr
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adderrr,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    C_OUT,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [3:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_out_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_out_intf, LAYERED_METADATA undef" *) output C_OUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [3:0]S;

  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire C_OUT;
  wire [3:0]S;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "4" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000" *) 
  (* c_b_width = "4" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "1" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "4" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(C_OUT),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "4" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "0000" *) 
(* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "1" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "4" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [3:0]A;
  input [3:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [3:0]S;

  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire C_OUT;
  wire [3:0]S;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "4" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000" *) 
  (* c_b_width = "4" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "1" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "4" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(C_OUT),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HXV4h5+M0Gyv7vvpLcg9doICq0dE9GVjJBO+hNdPTJvgX0VGA4ugqBKlkEqGuOyKztRGzLB27s8X
6i5leC2InQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dAxa0GFtAgoazxeRmxSl0Yps/nJ8Rpb3lCs3dkGXEdmxjp4N5EFfyS7U0FLTPNVV4xnePCr4q647
L4KcUzdGFlWPqo/QF8lyz6PEdU6dW8BktZKhrZHQ5uhG7d/Bf0EOVUn0mzfj8sgbaKWZYTEDERK6
pLNcwS3fMTcRzexShzE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qFA2Sas20o42qyLKUfSMJZGJ7FMOuYDRWyURzBBH3n2Qkaa75HLaliBCTs00LUZYplObnmj1+ZAf
80sKN7qGXguQ1PwKDYYHAVh9l9yGVlyNwObLOec7nrtHIPRPZ1Am330sVZYMipFnG9PAZanD2fe4
zBKk26jw4HdRQmG3vM1SWF3vXt1VR+UBS5eMUwG6haQqtGIZWHz48uyl4zc44Tqr2H4sR+yo0gE9
bXUY7Oc0GQvnczTzBftbc9jGOvnoi8sVcybTki5B/gTVWkBqcYl+Bx+SSOCo+FyQZGBqrUAFnf1m
pKFCRJnXqs4g3cmrmEG2RflwrWfJCOs3QdUjPQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EHIPCw3tqvASBeRc846RSvWMIU/QBgZYfNTkmzG9OlWqwIA3ukwCJx+dEAZCMyg/i7GW815EkwKE
ar/FOnRiTLMQpurIVTi3As1Sl6c1DkXq90HBljZSq18EFjvlH8nsGa0654mVCFQN3PiQfUfggiqD
LwP079R222U916zaDIMw6ZgRcbfM7bBAp73emqe6OC5mrt4mMGZ9AbQkGRU4iJeWX5x5zM0ev20/
2HCVT3rThYEK/hMu/29O6ZYpOwhKqVFUV8jaodAIgDRiYY0qd/CTZK9mvOgSUj0t6cJN4/Q/wVKt
mcOTr4F5A5rnCTva3pM2/SBekXOwQb01/rlfUQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L4GJr0S0dl+C4k+rj1r/KaqPKn7XGNysYQlDBTRHxj0Zgto0TejuU3cSjQJkMo/IlhkL5vx3hSMx
8DXh0KGY4W7Mmk5SffBJgti7D1pd1YP3w0zgDKIAkTLpoXaZECn77Jp9JWvdxrSHUb44QeC0VkRr
TT67tMIjtV+eqkCUfUiCSGq39iRyI7EpdVInAevmPCNIG5K4rHLTX0aJWAbgDwBRaTpw7W4wOBUe
Kag07iTsJYfG9TBJdRao3h4g2IyFjrcf4tdYFjQEIGB4Vfxhy6K9JjnkkfxGJQ4A0VrJVKlHsJFv
1+MmwN5+h/oRYCFJgcCtGfttJc2/AOQ8JKB8cw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gW6aOcJbrDMK7JqUnzFxAaYM2DL8EnxF345IOLkdfKxGnLCsw0mROpfP26LD91CJidCf9vaqLHsN
jwsLktZ7qUykkQzv9vOvGkB2KoLh32fPvZjhbcdDei3fy9cH8haCHJCiSghwIIOfzcXDyQO7+mpH
LfBUho9v0PmfLkeqSuE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YOgS+O+OWj8gVxfmdd2e+iTOOA4l1LloRJHtygw6wsU5a/FGoLxtLFOm39pCwOesAIo5cgP1cY7j
GMsvnPuTgP6YVNEPrLenO+0bM+rFgEpkVPDLGiQdrj+9tlcVifFJGGcDEFMtdjPm7SvdpsEh2Fzk
ZyTciJbc1vOSbmNUfL7f5SyT4X8NVQCnr4aIhzmrObrl+d/HXH5pWY0/wveklgGbBxwN3pI0aNdn
cY/a3XotdDTVTgdYnz9zaxscNhKuVHf6BpyCfI+XDdopSBDa7E47+Tot6Ck17VwjOOAKkqSNjD7+
HzzA77lmBhIrUxZnuOejS1O/VD/gmpze9ZPaeA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k5HYyfj/ihS9PBbOvUoavT6PuO3gvb5lq2O88rGf0tXefOeVGLblS01HfSdS8KJ9RdprM0KZU4K9
4hHcEidCpgTGv8xxnKeLjruh+2qgPNoAlaiYJVTBBAJ4btbMv1XELhjMGnAHMoZhwJUWOU6wmcGS
PYs8s5FCB00nmWmmxxFTBzmd7MJ3fiieaQv2qR1rO8Mr8rC37dFhHzt4SlW/kwgzmKdNWtmjKQzo
Y2oP/zWOqlOHndnn4lf5wagZ1ozW5Y0TwFnrIGMUw8Xmh32rIOOy54DfeFXGyvOaZJlf0WP0STW7
boSSQXvWZCCypaAHuwjmTJMS/lRoRpzMFgPaZw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UtmGK/ItyuFILsiCSc1+UaHWT7Y80RBkMKR7RNlehKw1RtczXRwPHIx/NTChgVQUEPU0Vc3RzbVb
GWISB8L+TJi0jSjy1GWUoS9WqcrQ7rCYLh9gIky0JfRdqQuxaP0MRMmjtu4twe/M6AraLpceeNbv
bkVuvw7c4pvBVQS2+8FN+VZR0yfM3IhMn+UAdZ7+h8O8XeTadagGvBIPJ5+64rK3Xdt01oEJScaj
5XsDUQbxHEc77QbQQJE7eI0o/MSuy6+fMTII55C54K0eaVyJUodK9XhbyY9W70jcZ28qpgk0g37G
1bMjQfr4pehqxRpJuPGPPEqlfmPoZ+AUm0WbrQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6272)
`pragma protect data_block
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
uWo=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
