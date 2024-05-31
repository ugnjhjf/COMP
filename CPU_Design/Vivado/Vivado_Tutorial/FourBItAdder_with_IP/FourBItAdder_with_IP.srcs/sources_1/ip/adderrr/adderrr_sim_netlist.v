// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Apr 16 10:16:41 2024
// Host        : DESKTOP-LAOKQO9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ugnjhjf/Desktop/COMP/Computer_Organization_CPU_Design/Vivado/Vivado_Tutorial/FourBItAdder_with_IP/FourBItAdder_with_IP.srcs/sources_1/ip/adderrr/adderrr_sim_netlist.v
// Design      : adderrr
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adderrr,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module adderrr
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
  adderrr_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adderrr_c_addsub_v12_0_12
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
  adderrr_c_addsub_v12_0_12_viv xst_addsub
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
I3GfuVdV7Kn2DE5LZwAd7k1l5IRHGFwXjkkZdsFBT7hHlvAo6qn2V87S9hVkO77q4j7ewxfNOsoD
0bAfRuXfywfmFtS24MnfSwsPav8EzZdwfKg1L41RYiwahWvp3MpmL3KtjKiLPzgGEvFGasVrmNUF
XUhppTLl0LFwwDRTnypPlKLpDyziUBstcBtYnBgq9RaEZsQFrP+J7wQlKixMu3QnxY4RxtoR4Y3v
ySNaU4Cr3LlTgVPMXeewz2GcbEEDp5l6VCW9lJfivvEy5gddjVJKU+DCHr+sPi74XNkskmXnEmZw
0HdEfGyfT8pZZVcUCEnETa68PWf7e5K3xkvOjA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Wme2kLqmjsXIwV5PpxItFQNYbFSrypFLHwEfeWcxs8uOhMYINAafBcoWWl8ANcTtFa9OoPjjeuuF
GML/pOLHVi/7ClS+4AqHmKC4IqvfWd/TjnGk7kjcUOHVAgoJ6JahAWFO/k0sB2ddpLoOX1lD0j7I
hwPCZF0ltq7NiA71dz7wBLGWO4DrwZvYOifYS9IvL8dnyIpo6ppPJqvj5+q2K6AkCKSib4Piufqd
ybkkLwc+ddhKBXosXpaqnRYDKxmTsSj9CKb/LzCF7hEC9qR1JqBPkfVHAOL9kUTEg4N9+tiay3w3
7kz9thw7y+ivgUPk21TmSBC3TaG5mftgOhWfoA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6160)
`pragma protect data_block
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
Fk4OVA==
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
