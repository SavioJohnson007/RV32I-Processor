# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new processor work:processor:NOFILE -nosplit
load symbol RTL_MUX5 work MUX pin S input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_AND1 work AND pinBus I0 input [31:0] pinBus I1 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RTL_MUX473 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [6:0] fillcolor 1
load symbol control_unit work:control_unit:NOFILE HIERBOX pin ALUSrc output.right pin Jump output.right pin MemWrite output.right pin PCSrc output.right pin RegWrite output.right pin ResultSrc output.right pin Zero input.left pin aiupc output.right pin funct7_5 input.left pinBus ALUControl output.right [3:0] pinBus ALUResult input.left [31:0] pinBus ImmSrc output.right [2:0] pinBus funct3 input.left [2:0] pinBus op input.left [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol data_mem work:data_mem:NOFILE HIERBOX pin WE input.left pin clk input.left pinBus A input.left [31:0] pinBus RD output.right [31:0] pinBus WD input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol extend work:extend:NOFILE HIERBOX pinBus ImmExt output.right [31:0] pinBus ImmSrc input.left [2:0] pinBus Instr input.left [24:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol instruction_mem work:instruction_mem:NOFILE HIERBOX pinBus A input.left [31:0] pinBus RD output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol load_handler work:load_handler:NOFILE HIERBOX pin clk input.left pinBus Data output.right [31:0] pinBus ReadData input.left [31:0] pinBus funct3 input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol alu work:alu:NOFILE HIERBOX pin Zero output.right pinBus ALUControl input.left [3:0] pinBus ALUResult output.right [31:0] pinBus SrcA input.left [31:0] pinBus SrcB input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol reg_file work:reg_file:NOFILE HIERBOX pin WE3 input.left pin clk input.left pinBus A1 input.left [4:0] pinBus A2 input.left [4:0] pinBus A3 input.left [4:0] pinBus RD1 output.right [31:0] pinBus RD2 output.right [31:0] pinBus WD3 input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol store_handler work:store_handler:NOFILE HIERBOX pin clk input.left pinBus Data_in input.left [31:0] pinBus funct3 input.left [2:0] pinBus store_Data output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG_ASYNC__BREG_66 work[31:0]ssww GEN pin C input.clk.left pin CLR input.top pinBus D input.left [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load port clk input -pg 1 -lvl 0 -x 0 -y 450
load port rst input -pg 1 -lvl 0 -x 0 -y 470
load inst ALUSrcA_i RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 17 -x 5150 -y 460
load inst PCNext_i RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 4 -x 1150 -y 370
load inst PCPlus4_i RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr V=X\"00000004\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 3 -x 850 -y 350
load inst PCTarget0_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr V=X\"FFFFFFFE\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 490 -y 150
load inst PCTarget0_i__0 RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 490 -y 310
load inst PCTarget_i RTL_MUX473 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=7'b1100111 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[6:0] -pg 1 -lvl 3 -x 850 -y 160
load inst Result0_i RTL_MUX473 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=7'b0110111 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[6:0] -pg 1 -lvl 11 -x 3190 -y 140
load inst Result1_i RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 10 -x 2850 -y 120
load inst Result_i RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 12 -x 3470 -y 120
load inst SrcB_i RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 14 -x 4090 -y 130
load inst cu control_unit work:control_unit:NOFILE -autohide -attr @cell(#000000) control_unit -pinBusAttr ALUControl @name ALUControl[3:0] -pinBusAttr ALUResult @name ALUResult[31:0] -pinBusAttr ImmSrc @name ImmSrc[2:0] -pinBusAttr funct3 @name funct3[2:0] -pinBusAttr op @name op[6:0] -pg 1 -lvl 16 -x 4720 -y 120
load inst dmem data_mem work:data_mem:NOFILE -autohide -attr @cell(#000000) data_mem -pinBusAttr A @name A[31:0] -pinBusAttr RD @name RD[31:0] -pinBusAttr WD @name WD[31:0] -pg 1 -lvl 8 -x 2250 -y 70
load inst ext extend work:extend:NOFILE -autohide -attr @cell(#000000) extend -pinBusAttr ImmExt @name ImmExt[31:0] -pinBusAttr ImmSrc @name ImmSrc[2:0] -pinBusAttr Instr @name Instr[24:0] -pg 1 -lvl 1 -x 140 -y 170
load inst imem instruction_mem work:instruction_mem:NOFILE -autohide -attr @cell(#000000) instruction_mem -pinBusAttr A @name A[31:0] -pinBusAttr RD @name RD[31:0] -pg 1 -lvl 6 -x 1660 -y 310
load inst lh load_handler work:load_handler:NOFILE -autohide -attr @cell(#000000) load_handler -pinBusAttr Data @name Data[31:0] -pinBusAttr ReadData @name ReadData[31:0] -pinBusAttr funct3 @name funct3[2:0] -pg 1 -lvl 9 -x 2550 -y 110
load inst main_alu alu work:alu:NOFILE -autohide -attr @cell(#000000) alu -pinBusAttr ALUControl @name ALUControl[3:0] -pinBusAttr ALUResult @name ALUResult[31:0] -pinBusAttr SrcA @name SrcA[31:0] -pinBusAttr SrcB @name SrcB[31:0] -pg 1 -lvl 15 -x 4360 -y 80
load inst rf reg_file work:reg_file:NOFILE -autohide -attr @cell(#000000) reg_file -pinBusAttr A1 @name A1[4:0] -pinBusAttr A2 @name A2[4:0] -pinBusAttr A3 @name A3[4:0] -pinBusAttr RD1 @name RD1[31:0] -pinBusAttr RD2 @name RD2[31:0] -pinBusAttr WD3 @name WD3[31:0] -pg 1 -lvl 13 -x 3750 -y 60
load inst sh store_handler work:store_handler:NOFILE -autohide -attr @cell(#000000) store_handler -pinBusAttr Data_in @name Data_in[31:0] -pinBusAttr funct3 @name funct3[2:0] -pinBusAttr store_Data @name store_Data[31:0] -pg 1 -lvl 7 -x 1950 -y 90
load inst PC_reg_reg[31:0] RTL_REG_ASYNC__BREG_66 work[31:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 5 -x 1400 -y 360
load net <const0> -ground -pin PCPlus4_i I1[31] -pin PCPlus4_i I1[30] -pin PCPlus4_i I1[29] -pin PCPlus4_i I1[28] -pin PCPlus4_i I1[27] -pin PCPlus4_i I1[26] -pin PCPlus4_i I1[25] -pin PCPlus4_i I1[24] -pin PCPlus4_i I1[23] -pin PCPlus4_i I1[22] -pin PCPlus4_i I1[21] -pin PCPlus4_i I1[20] -pin PCPlus4_i I1[19] -pin PCPlus4_i I1[18] -pin PCPlus4_i I1[17] -pin PCPlus4_i I1[16] -pin PCPlus4_i I1[15] -pin PCPlus4_i I1[14] -pin PCPlus4_i I1[13] -pin PCPlus4_i I1[12] -pin PCPlus4_i I1[11] -pin PCPlus4_i I1[10] -pin PCPlus4_i I1[9] -pin PCPlus4_i I1[8] -pin PCPlus4_i I1[7] -pin PCPlus4_i I1[6] -pin PCPlus4_i I1[5] -pin PCPlus4_i I1[4] -pin PCPlus4_i I1[3] -pin PCPlus4_i I1[1] -pin PCPlus4_i I1[0] -pin PCTarget0_i I1[0]
load net <const1> -power -pin PCPlus4_i I1[2] -pin PCTarget0_i I1[31] -pin PCTarget0_i I1[30] -pin PCTarget0_i I1[29] -pin PCTarget0_i I1[28] -pin PCTarget0_i I1[27] -pin PCTarget0_i I1[26] -pin PCTarget0_i I1[25] -pin PCTarget0_i I1[24] -pin PCTarget0_i I1[23] -pin PCTarget0_i I1[22] -pin PCTarget0_i I1[21] -pin PCTarget0_i I1[20] -pin PCTarget0_i I1[19] -pin PCTarget0_i I1[18] -pin PCTarget0_i I1[17] -pin PCTarget0_i I1[16] -pin PCTarget0_i I1[15] -pin PCTarget0_i I1[14] -pin PCTarget0_i I1[13] -pin PCTarget0_i I1[12] -pin PCTarget0_i I1[11] -pin PCTarget0_i I1[10] -pin PCTarget0_i I1[9] -pin PCTarget0_i I1[8] -pin PCTarget0_i I1[7] -pin PCTarget0_i I1[6] -pin PCTarget0_i I1[5] -pin PCTarget0_i I1[4] -pin PCTarget0_i I1[3] -pin PCTarget0_i I1[2] -pin PCTarget0_i I1[1]
load net ALUControl[0] -attr @rip(#000000) ALUControl[0] -pin cu ALUControl[0] -pin main_alu ALUControl[0]
load net ALUControl[1] -attr @rip(#000000) ALUControl[1] -pin cu ALUControl[1] -pin main_alu ALUControl[1]
load net ALUControl[2] -attr @rip(#000000) ALUControl[2] -pin cu ALUControl[2] -pin main_alu ALUControl[2]
load net ALUControl[3] -attr @rip(#000000) ALUControl[3] -pin cu ALUControl[3] -pin main_alu ALUControl[3]
load net ALUResult[0] -attr @rip(#000000) ALUResult[0] -pin PCTarget0_i I0[0] -pin Result1_i I1[0] -pin cu ALUResult[0] -pin dmem A[0] -pin main_alu ALUResult[0]
load net ALUResult[10] -attr @rip(#000000) ALUResult[10] -pin PCTarget0_i I0[10] -pin Result1_i I1[10] -pin cu ALUResult[10] -pin dmem A[10] -pin main_alu ALUResult[10]
load net ALUResult[11] -attr @rip(#000000) ALUResult[11] -pin PCTarget0_i I0[11] -pin Result1_i I1[11] -pin cu ALUResult[11] -pin dmem A[11] -pin main_alu ALUResult[11]
load net ALUResult[12] -attr @rip(#000000) ALUResult[12] -pin PCTarget0_i I0[12] -pin Result1_i I1[12] -pin cu ALUResult[12] -pin dmem A[12] -pin main_alu ALUResult[12]
load net ALUResult[13] -attr @rip(#000000) ALUResult[13] -pin PCTarget0_i I0[13] -pin Result1_i I1[13] -pin cu ALUResult[13] -pin dmem A[13] -pin main_alu ALUResult[13]
load net ALUResult[14] -attr @rip(#000000) ALUResult[14] -pin PCTarget0_i I0[14] -pin Result1_i I1[14] -pin cu ALUResult[14] -pin dmem A[14] -pin main_alu ALUResult[14]
load net ALUResult[15] -attr @rip(#000000) ALUResult[15] -pin PCTarget0_i I0[15] -pin Result1_i I1[15] -pin cu ALUResult[15] -pin dmem A[15] -pin main_alu ALUResult[15]
load net ALUResult[16] -attr @rip(#000000) ALUResult[16] -pin PCTarget0_i I0[16] -pin Result1_i I1[16] -pin cu ALUResult[16] -pin dmem A[16] -pin main_alu ALUResult[16]
load net ALUResult[17] -attr @rip(#000000) ALUResult[17] -pin PCTarget0_i I0[17] -pin Result1_i I1[17] -pin cu ALUResult[17] -pin dmem A[17] -pin main_alu ALUResult[17]
load net ALUResult[18] -attr @rip(#000000) ALUResult[18] -pin PCTarget0_i I0[18] -pin Result1_i I1[18] -pin cu ALUResult[18] -pin dmem A[18] -pin main_alu ALUResult[18]
load net ALUResult[19] -attr @rip(#000000) ALUResult[19] -pin PCTarget0_i I0[19] -pin Result1_i I1[19] -pin cu ALUResult[19] -pin dmem A[19] -pin main_alu ALUResult[19]
load net ALUResult[1] -attr @rip(#000000) ALUResult[1] -pin PCTarget0_i I0[1] -pin Result1_i I1[1] -pin cu ALUResult[1] -pin dmem A[1] -pin main_alu ALUResult[1]
load net ALUResult[20] -attr @rip(#000000) ALUResult[20] -pin PCTarget0_i I0[20] -pin Result1_i I1[20] -pin cu ALUResult[20] -pin dmem A[20] -pin main_alu ALUResult[20]
load net ALUResult[21] -attr @rip(#000000) ALUResult[21] -pin PCTarget0_i I0[21] -pin Result1_i I1[21] -pin cu ALUResult[21] -pin dmem A[21] -pin main_alu ALUResult[21]
load net ALUResult[22] -attr @rip(#000000) ALUResult[22] -pin PCTarget0_i I0[22] -pin Result1_i I1[22] -pin cu ALUResult[22] -pin dmem A[22] -pin main_alu ALUResult[22]
load net ALUResult[23] -attr @rip(#000000) ALUResult[23] -pin PCTarget0_i I0[23] -pin Result1_i I1[23] -pin cu ALUResult[23] -pin dmem A[23] -pin main_alu ALUResult[23]
load net ALUResult[24] -attr @rip(#000000) ALUResult[24] -pin PCTarget0_i I0[24] -pin Result1_i I1[24] -pin cu ALUResult[24] -pin dmem A[24] -pin main_alu ALUResult[24]
load net ALUResult[25] -attr @rip(#000000) ALUResult[25] -pin PCTarget0_i I0[25] -pin Result1_i I1[25] -pin cu ALUResult[25] -pin dmem A[25] -pin main_alu ALUResult[25]
load net ALUResult[26] -attr @rip(#000000) ALUResult[26] -pin PCTarget0_i I0[26] -pin Result1_i I1[26] -pin cu ALUResult[26] -pin dmem A[26] -pin main_alu ALUResult[26]
load net ALUResult[27] -attr @rip(#000000) ALUResult[27] -pin PCTarget0_i I0[27] -pin Result1_i I1[27] -pin cu ALUResult[27] -pin dmem A[27] -pin main_alu ALUResult[27]
load net ALUResult[28] -attr @rip(#000000) ALUResult[28] -pin PCTarget0_i I0[28] -pin Result1_i I1[28] -pin cu ALUResult[28] -pin dmem A[28] -pin main_alu ALUResult[28]
load net ALUResult[29] -attr @rip(#000000) ALUResult[29] -pin PCTarget0_i I0[29] -pin Result1_i I1[29] -pin cu ALUResult[29] -pin dmem A[29] -pin main_alu ALUResult[29]
load net ALUResult[2] -attr @rip(#000000) ALUResult[2] -pin PCTarget0_i I0[2] -pin Result1_i I1[2] -pin cu ALUResult[2] -pin dmem A[2] -pin main_alu ALUResult[2]
load net ALUResult[30] -attr @rip(#000000) ALUResult[30] -pin PCTarget0_i I0[30] -pin Result1_i I1[30] -pin cu ALUResult[30] -pin dmem A[30] -pin main_alu ALUResult[30]
load net ALUResult[31] -attr @rip(#000000) ALUResult[31] -pin PCTarget0_i I0[31] -pin Result1_i I1[31] -pin cu ALUResult[31] -pin dmem A[31] -pin main_alu ALUResult[31]
load net ALUResult[3] -attr @rip(#000000) ALUResult[3] -pin PCTarget0_i I0[3] -pin Result1_i I1[3] -pin cu ALUResult[3] -pin dmem A[3] -pin main_alu ALUResult[3]
load net ALUResult[4] -attr @rip(#000000) ALUResult[4] -pin PCTarget0_i I0[4] -pin Result1_i I1[4] -pin cu ALUResult[4] -pin dmem A[4] -pin main_alu ALUResult[4]
load net ALUResult[5] -attr @rip(#000000) ALUResult[5] -pin PCTarget0_i I0[5] -pin Result1_i I1[5] -pin cu ALUResult[5] -pin dmem A[5] -pin main_alu ALUResult[5]
load net ALUResult[6] -attr @rip(#000000) ALUResult[6] -pin PCTarget0_i I0[6] -pin Result1_i I1[6] -pin cu ALUResult[6] -pin dmem A[6] -pin main_alu ALUResult[6]
load net ALUResult[7] -attr @rip(#000000) ALUResult[7] -pin PCTarget0_i I0[7] -pin Result1_i I1[7] -pin cu ALUResult[7] -pin dmem A[7] -pin main_alu ALUResult[7]
load net ALUResult[8] -attr @rip(#000000) ALUResult[8] -pin PCTarget0_i I0[8] -pin Result1_i I1[8] -pin cu ALUResult[8] -pin dmem A[8] -pin main_alu ALUResult[8]
load net ALUResult[9] -attr @rip(#000000) ALUResult[9] -pin PCTarget0_i I0[9] -pin Result1_i I1[9] -pin cu ALUResult[9] -pin dmem A[9] -pin main_alu ALUResult[9]
load net ALUSrc -pin SrcB_i S -pin cu ALUSrc
netloc ALUSrc 1 14 3 4220 170 4540J 50 4920
load net ALUSrcA[0] -attr @rip(#000000) O[0] -pin ALUSrcA_i O[0] -pin main_alu SrcA[0]
load net ALUSrcA[10] -attr @rip(#000000) O[10] -pin ALUSrcA_i O[10] -pin main_alu SrcA[10]
load net ALUSrcA[11] -attr @rip(#000000) O[11] -pin ALUSrcA_i O[11] -pin main_alu SrcA[11]
load net ALUSrcA[12] -attr @rip(#000000) O[12] -pin ALUSrcA_i O[12] -pin main_alu SrcA[12]
load net ALUSrcA[13] -attr @rip(#000000) O[13] -pin ALUSrcA_i O[13] -pin main_alu SrcA[13]
load net ALUSrcA[14] -attr @rip(#000000) O[14] -pin ALUSrcA_i O[14] -pin main_alu SrcA[14]
load net ALUSrcA[15] -attr @rip(#000000) O[15] -pin ALUSrcA_i O[15] -pin main_alu SrcA[15]
load net ALUSrcA[16] -attr @rip(#000000) O[16] -pin ALUSrcA_i O[16] -pin main_alu SrcA[16]
load net ALUSrcA[17] -attr @rip(#000000) O[17] -pin ALUSrcA_i O[17] -pin main_alu SrcA[17]
load net ALUSrcA[18] -attr @rip(#000000) O[18] -pin ALUSrcA_i O[18] -pin main_alu SrcA[18]
load net ALUSrcA[19] -attr @rip(#000000) O[19] -pin ALUSrcA_i O[19] -pin main_alu SrcA[19]
load net ALUSrcA[1] -attr @rip(#000000) O[1] -pin ALUSrcA_i O[1] -pin main_alu SrcA[1]
load net ALUSrcA[20] -attr @rip(#000000) O[20] -pin ALUSrcA_i O[20] -pin main_alu SrcA[20]
load net ALUSrcA[21] -attr @rip(#000000) O[21] -pin ALUSrcA_i O[21] -pin main_alu SrcA[21]
load net ALUSrcA[22] -attr @rip(#000000) O[22] -pin ALUSrcA_i O[22] -pin main_alu SrcA[22]
load net ALUSrcA[23] -attr @rip(#000000) O[23] -pin ALUSrcA_i O[23] -pin main_alu SrcA[23]
load net ALUSrcA[24] -attr @rip(#000000) O[24] -pin ALUSrcA_i O[24] -pin main_alu SrcA[24]
load net ALUSrcA[25] -attr @rip(#000000) O[25] -pin ALUSrcA_i O[25] -pin main_alu SrcA[25]
load net ALUSrcA[26] -attr @rip(#000000) O[26] -pin ALUSrcA_i O[26] -pin main_alu SrcA[26]
load net ALUSrcA[27] -attr @rip(#000000) O[27] -pin ALUSrcA_i O[27] -pin main_alu SrcA[27]
load net ALUSrcA[28] -attr @rip(#000000) O[28] -pin ALUSrcA_i O[28] -pin main_alu SrcA[28]
load net ALUSrcA[29] -attr @rip(#000000) O[29] -pin ALUSrcA_i O[29] -pin main_alu SrcA[29]
load net ALUSrcA[2] -attr @rip(#000000) O[2] -pin ALUSrcA_i O[2] -pin main_alu SrcA[2]
load net ALUSrcA[30] -attr @rip(#000000) O[30] -pin ALUSrcA_i O[30] -pin main_alu SrcA[30]
load net ALUSrcA[31] -attr @rip(#000000) O[31] -pin ALUSrcA_i O[31] -pin main_alu SrcA[31]
load net ALUSrcA[3] -attr @rip(#000000) O[3] -pin ALUSrcA_i O[3] -pin main_alu SrcA[3]
load net ALUSrcA[4] -attr @rip(#000000) O[4] -pin ALUSrcA_i O[4] -pin main_alu SrcA[4]
load net ALUSrcA[5] -attr @rip(#000000) O[5] -pin ALUSrcA_i O[5] -pin main_alu SrcA[5]
load net ALUSrcA[6] -attr @rip(#000000) O[6] -pin ALUSrcA_i O[6] -pin main_alu SrcA[6]
load net ALUSrcA[7] -attr @rip(#000000) O[7] -pin ALUSrcA_i O[7] -pin main_alu SrcA[7]
load net ALUSrcA[8] -attr @rip(#000000) O[8] -pin ALUSrcA_i O[8] -pin main_alu SrcA[8]
load net ALUSrcA[9] -attr @rip(#000000) O[9] -pin ALUSrcA_i O[9] -pin main_alu SrcA[9]
load net Data[0] -attr @rip(#000000) Data[0] -pin Result1_i I0[0] -pin lh Data[0]
load net Data[10] -attr @rip(#000000) Data[10] -pin Result1_i I0[10] -pin lh Data[10]
load net Data[11] -attr @rip(#000000) Data[11] -pin Result1_i I0[11] -pin lh Data[11]
load net Data[12] -attr @rip(#000000) Data[12] -pin Result1_i I0[12] -pin lh Data[12]
load net Data[13] -attr @rip(#000000) Data[13] -pin Result1_i I0[13] -pin lh Data[13]
load net Data[14] -attr @rip(#000000) Data[14] -pin Result1_i I0[14] -pin lh Data[14]
load net Data[15] -attr @rip(#000000) Data[15] -pin Result1_i I0[15] -pin lh Data[15]
load net Data[16] -attr @rip(#000000) Data[16] -pin Result1_i I0[16] -pin lh Data[16]
load net Data[17] -attr @rip(#000000) Data[17] -pin Result1_i I0[17] -pin lh Data[17]
load net Data[18] -attr @rip(#000000) Data[18] -pin Result1_i I0[18] -pin lh Data[18]
load net Data[19] -attr @rip(#000000) Data[19] -pin Result1_i I0[19] -pin lh Data[19]
load net Data[1] -attr @rip(#000000) Data[1] -pin Result1_i I0[1] -pin lh Data[1]
load net Data[20] -attr @rip(#000000) Data[20] -pin Result1_i I0[20] -pin lh Data[20]
load net Data[21] -attr @rip(#000000) Data[21] -pin Result1_i I0[21] -pin lh Data[21]
load net Data[22] -attr @rip(#000000) Data[22] -pin Result1_i I0[22] -pin lh Data[22]
load net Data[23] -attr @rip(#000000) Data[23] -pin Result1_i I0[23] -pin lh Data[23]
load net Data[24] -attr @rip(#000000) Data[24] -pin Result1_i I0[24] -pin lh Data[24]
load net Data[25] -attr @rip(#000000) Data[25] -pin Result1_i I0[25] -pin lh Data[25]
load net Data[26] -attr @rip(#000000) Data[26] -pin Result1_i I0[26] -pin lh Data[26]
load net Data[27] -attr @rip(#000000) Data[27] -pin Result1_i I0[27] -pin lh Data[27]
load net Data[28] -attr @rip(#000000) Data[28] -pin Result1_i I0[28] -pin lh Data[28]
load net Data[29] -attr @rip(#000000) Data[29] -pin Result1_i I0[29] -pin lh Data[29]
load net Data[2] -attr @rip(#000000) Data[2] -pin Result1_i I0[2] -pin lh Data[2]
load net Data[30] -attr @rip(#000000) Data[30] -pin Result1_i I0[30] -pin lh Data[30]
load net Data[31] -attr @rip(#000000) Data[31] -pin Result1_i I0[31] -pin lh Data[31]
load net Data[3] -attr @rip(#000000) Data[3] -pin Result1_i I0[3] -pin lh Data[3]
load net Data[4] -attr @rip(#000000) Data[4] -pin Result1_i I0[4] -pin lh Data[4]
load net Data[5] -attr @rip(#000000) Data[5] -pin Result1_i I0[5] -pin lh Data[5]
load net Data[6] -attr @rip(#000000) Data[6] -pin Result1_i I0[6] -pin lh Data[6]
load net Data[7] -attr @rip(#000000) Data[7] -pin Result1_i I0[7] -pin lh Data[7]
load net Data[8] -attr @rip(#000000) Data[8] -pin Result1_i I0[8] -pin lh Data[8]
load net Data[9] -attr @rip(#000000) Data[9] -pin Result1_i I0[9] -pin lh Data[9]
load net ImmExt[0] -attr @rip(#000000) ImmExt[0] -pin PCTarget0_i__0 I1[0] -pin Result0_i I0[0] -pin SrcB_i I0[0] -pin ext ImmExt[0]
load net ImmExt[10] -attr @rip(#000000) ImmExt[10] -pin PCTarget0_i__0 I1[10] -pin Result0_i I0[10] -pin SrcB_i I0[10] -pin ext ImmExt[10]
load net ImmExt[11] -attr @rip(#000000) ImmExt[11] -pin PCTarget0_i__0 I1[11] -pin Result0_i I0[11] -pin SrcB_i I0[11] -pin ext ImmExt[11]
load net ImmExt[12] -attr @rip(#000000) ImmExt[12] -pin PCTarget0_i__0 I1[12] -pin Result0_i I0[12] -pin SrcB_i I0[12] -pin ext ImmExt[12]
load net ImmExt[13] -attr @rip(#000000) ImmExt[13] -pin PCTarget0_i__0 I1[13] -pin Result0_i I0[13] -pin SrcB_i I0[13] -pin ext ImmExt[13]
load net ImmExt[14] -attr @rip(#000000) ImmExt[14] -pin PCTarget0_i__0 I1[14] -pin Result0_i I0[14] -pin SrcB_i I0[14] -pin ext ImmExt[14]
load net ImmExt[15] -attr @rip(#000000) ImmExt[15] -pin PCTarget0_i__0 I1[15] -pin Result0_i I0[15] -pin SrcB_i I0[15] -pin ext ImmExt[15]
load net ImmExt[16] -attr @rip(#000000) ImmExt[16] -pin PCTarget0_i__0 I1[16] -pin Result0_i I0[16] -pin SrcB_i I0[16] -pin ext ImmExt[16]
load net ImmExt[17] -attr @rip(#000000) ImmExt[17] -pin PCTarget0_i__0 I1[17] -pin Result0_i I0[17] -pin SrcB_i I0[17] -pin ext ImmExt[17]
load net ImmExt[18] -attr @rip(#000000) ImmExt[18] -pin PCTarget0_i__0 I1[18] -pin Result0_i I0[18] -pin SrcB_i I0[18] -pin ext ImmExt[18]
load net ImmExt[19] -attr @rip(#000000) ImmExt[19] -pin PCTarget0_i__0 I1[19] -pin Result0_i I0[19] -pin SrcB_i I0[19] -pin ext ImmExt[19]
load net ImmExt[1] -attr @rip(#000000) ImmExt[1] -pin PCTarget0_i__0 I1[1] -pin Result0_i I0[1] -pin SrcB_i I0[1] -pin ext ImmExt[1]
load net ImmExt[20] -attr @rip(#000000) ImmExt[20] -pin PCTarget0_i__0 I1[20] -pin Result0_i I0[20] -pin SrcB_i I0[20] -pin ext ImmExt[20]
load net ImmExt[21] -attr @rip(#000000) ImmExt[21] -pin PCTarget0_i__0 I1[21] -pin Result0_i I0[21] -pin SrcB_i I0[21] -pin ext ImmExt[21]
load net ImmExt[22] -attr @rip(#000000) ImmExt[22] -pin PCTarget0_i__0 I1[22] -pin Result0_i I0[22] -pin SrcB_i I0[22] -pin ext ImmExt[22]
load net ImmExt[23] -attr @rip(#000000) ImmExt[23] -pin PCTarget0_i__0 I1[23] -pin Result0_i I0[23] -pin SrcB_i I0[23] -pin ext ImmExt[23]
load net ImmExt[24] -attr @rip(#000000) ImmExt[24] -pin PCTarget0_i__0 I1[24] -pin Result0_i I0[24] -pin SrcB_i I0[24] -pin ext ImmExt[24]
load net ImmExt[25] -attr @rip(#000000) ImmExt[25] -pin PCTarget0_i__0 I1[25] -pin Result0_i I0[25] -pin SrcB_i I0[25] -pin ext ImmExt[25]
load net ImmExt[26] -attr @rip(#000000) ImmExt[26] -pin PCTarget0_i__0 I1[26] -pin Result0_i I0[26] -pin SrcB_i I0[26] -pin ext ImmExt[26]
load net ImmExt[27] -attr @rip(#000000) ImmExt[27] -pin PCTarget0_i__0 I1[27] -pin Result0_i I0[27] -pin SrcB_i I0[27] -pin ext ImmExt[27]
load net ImmExt[28] -attr @rip(#000000) ImmExt[28] -pin PCTarget0_i__0 I1[28] -pin Result0_i I0[28] -pin SrcB_i I0[28] -pin ext ImmExt[28]
load net ImmExt[29] -attr @rip(#000000) ImmExt[29] -pin PCTarget0_i__0 I1[29] -pin Result0_i I0[29] -pin SrcB_i I0[29] -pin ext ImmExt[29]
load net ImmExt[2] -attr @rip(#000000) ImmExt[2] -pin PCTarget0_i__0 I1[2] -pin Result0_i I0[2] -pin SrcB_i I0[2] -pin ext ImmExt[2]
load net ImmExt[30] -attr @rip(#000000) ImmExt[30] -pin PCTarget0_i__0 I1[30] -pin Result0_i I0[30] -pin SrcB_i I0[30] -pin ext ImmExt[30]
load net ImmExt[31] -attr @rip(#000000) ImmExt[31] -pin PCTarget0_i__0 I1[31] -pin Result0_i I0[31] -pin SrcB_i I0[31] -pin ext ImmExt[31]
load net ImmExt[3] -attr @rip(#000000) ImmExt[3] -pin PCTarget0_i__0 I1[3] -pin Result0_i I0[3] -pin SrcB_i I0[3] -pin ext ImmExt[3]
load net ImmExt[4] -attr @rip(#000000) ImmExt[4] -pin PCTarget0_i__0 I1[4] -pin Result0_i I0[4] -pin SrcB_i I0[4] -pin ext ImmExt[4]
load net ImmExt[5] -attr @rip(#000000) ImmExt[5] -pin PCTarget0_i__0 I1[5] -pin Result0_i I0[5] -pin SrcB_i I0[5] -pin ext ImmExt[5]
load net ImmExt[6] -attr @rip(#000000) ImmExt[6] -pin PCTarget0_i__0 I1[6] -pin Result0_i I0[6] -pin SrcB_i I0[6] -pin ext ImmExt[6]
load net ImmExt[7] -attr @rip(#000000) ImmExt[7] -pin PCTarget0_i__0 I1[7] -pin Result0_i I0[7] -pin SrcB_i I0[7] -pin ext ImmExt[7]
load net ImmExt[8] -attr @rip(#000000) ImmExt[8] -pin PCTarget0_i__0 I1[8] -pin Result0_i I0[8] -pin SrcB_i I0[8] -pin ext ImmExt[8]
load net ImmExt[9] -attr @rip(#000000) ImmExt[9] -pin PCTarget0_i__0 I1[9] -pin Result0_i I0[9] -pin SrcB_i I0[9] -pin ext ImmExt[9]
load net ImmSrc[0] -attr @rip(#000000) ImmSrc[0] -pin cu ImmSrc[0] -pin ext ImmSrc[0]
load net ImmSrc[1] -attr @rip(#000000) ImmSrc[1] -pin cu ImmSrc[1] -pin ext ImmSrc[1]
load net ImmSrc[2] -attr @rip(#000000) ImmSrc[2] -pin cu ImmSrc[2] -pin ext ImmSrc[2]
load net Instr[0] -attr @rip(#000000) RD[0] -pin PCTarget_i S[0] -pin Result0_i S[0] -pin cu op[0] -pin imem RD[0]
load net Instr[10] -attr @rip(#000000) RD[10] -pin ext Instr[3] -pin imem RD[10] -pin rf A3[3]
load net Instr[11] -attr @rip(#000000) RD[11] -pin ext Instr[4] -pin imem RD[11] -pin rf A3[4]
load net Instr[12] -attr @rip(#000000) RD[12] -pin cu funct3[0] -pin ext Instr[5] -pin imem RD[12] -pin lh funct3[0] -pin sh funct3[0]
load net Instr[13] -attr @rip(#000000) RD[13] -pin cu funct3[1] -pin ext Instr[6] -pin imem RD[13] -pin lh funct3[1] -pin sh funct3[1]
load net Instr[14] -attr @rip(#000000) RD[14] -pin cu funct3[2] -pin ext Instr[7] -pin imem RD[14] -pin lh funct3[2] -pin sh funct3[2]
load net Instr[15] -attr @rip(#000000) RD[15] -pin ext Instr[8] -pin imem RD[15] -pin rf A1[0]
load net Instr[16] -attr @rip(#000000) RD[16] -pin ext Instr[9] -pin imem RD[16] -pin rf A1[1]
load net Instr[17] -attr @rip(#000000) RD[17] -pin ext Instr[10] -pin imem RD[17] -pin rf A1[2]
load net Instr[18] -attr @rip(#000000) RD[18] -pin ext Instr[11] -pin imem RD[18] -pin rf A1[3]
load net Instr[19] -attr @rip(#000000) RD[19] -pin ext Instr[12] -pin imem RD[19] -pin rf A1[4]
load net Instr[1] -attr @rip(#000000) RD[1] -pin PCTarget_i S[1] -pin Result0_i S[1] -pin cu op[1] -pin imem RD[1]
load net Instr[20] -attr @rip(#000000) RD[20] -pin ext Instr[13] -pin imem RD[20] -pin rf A2[0]
load net Instr[21] -attr @rip(#000000) RD[21] -pin ext Instr[14] -pin imem RD[21] -pin rf A2[1]
load net Instr[22] -attr @rip(#000000) RD[22] -pin ext Instr[15] -pin imem RD[22] -pin rf A2[2]
load net Instr[23] -attr @rip(#000000) RD[23] -pin ext Instr[16] -pin imem RD[23] -pin rf A2[3]
load net Instr[24] -attr @rip(#000000) RD[24] -pin ext Instr[17] -pin imem RD[24] -pin rf A2[4]
load net Instr[25] -attr @rip(#000000) RD[25] -pin ext Instr[18] -pin imem RD[25]
load net Instr[26] -attr @rip(#000000) RD[26] -pin ext Instr[19] -pin imem RD[26]
load net Instr[27] -attr @rip(#000000) RD[27] -pin ext Instr[20] -pin imem RD[27]
load net Instr[28] -attr @rip(#000000) RD[28] -pin ext Instr[21] -pin imem RD[28]
load net Instr[29] -attr @rip(#000000) RD[29] -pin ext Instr[22] -pin imem RD[29]
load net Instr[2] -attr @rip(#000000) RD[2] -pin PCTarget_i S[2] -pin Result0_i S[2] -pin cu op[2] -pin imem RD[2]
load net Instr[30] -attr @rip(#000000) RD[30] -pin cu funct7_5 -pin ext Instr[23] -pin imem RD[30]
load net Instr[31] -attr @rip(#000000) RD[31] -pin ext Instr[24] -pin imem RD[31]
load net Instr[3] -attr @rip(#000000) RD[3] -pin PCTarget_i S[3] -pin Result0_i S[3] -pin cu op[3] -pin imem RD[3]
load net Instr[4] -attr @rip(#000000) RD[4] -pin PCTarget_i S[4] -pin Result0_i S[4] -pin cu op[4] -pin imem RD[4]
load net Instr[5] -attr @rip(#000000) RD[5] -pin PCTarget_i S[5] -pin Result0_i S[5] -pin cu op[5] -pin imem RD[5]
load net Instr[6] -attr @rip(#000000) RD[6] -pin PCTarget_i S[6] -pin Result0_i S[6] -pin cu op[6] -pin imem RD[6]
load net Instr[7] -attr @rip(#000000) RD[7] -pin ext Instr[0] -pin imem RD[7] -pin rf A3[0]
load net Instr[8] -attr @rip(#000000) RD[8] -pin ext Instr[1] -pin imem RD[8] -pin rf A3[1]
load net Instr[9] -attr @rip(#000000) RD[9] -pin ext Instr[2] -pin imem RD[9] -pin rf A3[2]
load net Jump -pin Result_i S -pin cu Jump
netloc Jump 1 12 5 3600 330 NJ 330 NJ 330 NJ 330 4980
load net MemWrite -pin cu MemWrite -pin dmem WE
netloc MemWrite 1 7 10 2160 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 4960
load net PCNext[0] -attr @rip(#000000) O[0] -pin PCNext_i O[0] -pin PC_reg_reg[31:0] D[0]
load net PCNext[10] -attr @rip(#000000) O[10] -pin PCNext_i O[10] -pin PC_reg_reg[31:0] D[10]
load net PCNext[11] -attr @rip(#000000) O[11] -pin PCNext_i O[11] -pin PC_reg_reg[31:0] D[11]
load net PCNext[12] -attr @rip(#000000) O[12] -pin PCNext_i O[12] -pin PC_reg_reg[31:0] D[12]
load net PCNext[13] -attr @rip(#000000) O[13] -pin PCNext_i O[13] -pin PC_reg_reg[31:0] D[13]
load net PCNext[14] -attr @rip(#000000) O[14] -pin PCNext_i O[14] -pin PC_reg_reg[31:0] D[14]
load net PCNext[15] -attr @rip(#000000) O[15] -pin PCNext_i O[15] -pin PC_reg_reg[31:0] D[15]
load net PCNext[16] -attr @rip(#000000) O[16] -pin PCNext_i O[16] -pin PC_reg_reg[31:0] D[16]
load net PCNext[17] -attr @rip(#000000) O[17] -pin PCNext_i O[17] -pin PC_reg_reg[31:0] D[17]
load net PCNext[18] -attr @rip(#000000) O[18] -pin PCNext_i O[18] -pin PC_reg_reg[31:0] D[18]
load net PCNext[19] -attr @rip(#000000) O[19] -pin PCNext_i O[19] -pin PC_reg_reg[31:0] D[19]
load net PCNext[1] -attr @rip(#000000) O[1] -pin PCNext_i O[1] -pin PC_reg_reg[31:0] D[1]
load net PCNext[20] -attr @rip(#000000) O[20] -pin PCNext_i O[20] -pin PC_reg_reg[31:0] D[20]
load net PCNext[21] -attr @rip(#000000) O[21] -pin PCNext_i O[21] -pin PC_reg_reg[31:0] D[21]
load net PCNext[22] -attr @rip(#000000) O[22] -pin PCNext_i O[22] -pin PC_reg_reg[31:0] D[22]
load net PCNext[23] -attr @rip(#000000) O[23] -pin PCNext_i O[23] -pin PC_reg_reg[31:0] D[23]
load net PCNext[24] -attr @rip(#000000) O[24] -pin PCNext_i O[24] -pin PC_reg_reg[31:0] D[24]
load net PCNext[25] -attr @rip(#000000) O[25] -pin PCNext_i O[25] -pin PC_reg_reg[31:0] D[25]
load net PCNext[26] -attr @rip(#000000) O[26] -pin PCNext_i O[26] -pin PC_reg_reg[31:0] D[26]
load net PCNext[27] -attr @rip(#000000) O[27] -pin PCNext_i O[27] -pin PC_reg_reg[31:0] D[27]
load net PCNext[28] -attr @rip(#000000) O[28] -pin PCNext_i O[28] -pin PC_reg_reg[31:0] D[28]
load net PCNext[29] -attr @rip(#000000) O[29] -pin PCNext_i O[29] -pin PC_reg_reg[31:0] D[29]
load net PCNext[2] -attr @rip(#000000) O[2] -pin PCNext_i O[2] -pin PC_reg_reg[31:0] D[2]
load net PCNext[30] -attr @rip(#000000) O[30] -pin PCNext_i O[30] -pin PC_reg_reg[31:0] D[30]
load net PCNext[31] -attr @rip(#000000) O[31] -pin PCNext_i O[31] -pin PC_reg_reg[31:0] D[31]
load net PCNext[3] -attr @rip(#000000) O[3] -pin PCNext_i O[3] -pin PC_reg_reg[31:0] D[3]
load net PCNext[4] -attr @rip(#000000) O[4] -pin PCNext_i O[4] -pin PC_reg_reg[31:0] D[4]
load net PCNext[5] -attr @rip(#000000) O[5] -pin PCNext_i O[5] -pin PC_reg_reg[31:0] D[5]
load net PCNext[6] -attr @rip(#000000) O[6] -pin PCNext_i O[6] -pin PC_reg_reg[31:0] D[6]
load net PCNext[7] -attr @rip(#000000) O[7] -pin PCNext_i O[7] -pin PC_reg_reg[31:0] D[7]
load net PCNext[8] -attr @rip(#000000) O[8] -pin PCNext_i O[8] -pin PC_reg_reg[31:0] D[8]
load net PCNext[9] -attr @rip(#000000) O[9] -pin PCNext_i O[9] -pin PC_reg_reg[31:0] D[9]
load net PCPlus4[0] -attr @rip(#000000) O[0] -pin PCNext_i I1[0] -pin PCPlus4_i O[0] -pin Result_i I0[0]
load net PCPlus4[10] -attr @rip(#000000) O[10] -pin PCNext_i I1[10] -pin PCPlus4_i O[10] -pin Result_i I0[10]
load net PCPlus4[11] -attr @rip(#000000) O[11] -pin PCNext_i I1[11] -pin PCPlus4_i O[11] -pin Result_i I0[11]
load net PCPlus4[12] -attr @rip(#000000) O[12] -pin PCNext_i I1[12] -pin PCPlus4_i O[12] -pin Result_i I0[12]
load net PCPlus4[13] -attr @rip(#000000) O[13] -pin PCNext_i I1[13] -pin PCPlus4_i O[13] -pin Result_i I0[13]
load net PCPlus4[14] -attr @rip(#000000) O[14] -pin PCNext_i I1[14] -pin PCPlus4_i O[14] -pin Result_i I0[14]
load net PCPlus4[15] -attr @rip(#000000) O[15] -pin PCNext_i I1[15] -pin PCPlus4_i O[15] -pin Result_i I0[15]
load net PCPlus4[16] -attr @rip(#000000) O[16] -pin PCNext_i I1[16] -pin PCPlus4_i O[16] -pin Result_i I0[16]
load net PCPlus4[17] -attr @rip(#000000) O[17] -pin PCNext_i I1[17] -pin PCPlus4_i O[17] -pin Result_i I0[17]
load net PCPlus4[18] -attr @rip(#000000) O[18] -pin PCNext_i I1[18] -pin PCPlus4_i O[18] -pin Result_i I0[18]
load net PCPlus4[19] -attr @rip(#000000) O[19] -pin PCNext_i I1[19] -pin PCPlus4_i O[19] -pin Result_i I0[19]
load net PCPlus4[1] -attr @rip(#000000) O[1] -pin PCNext_i I1[1] -pin PCPlus4_i O[1] -pin Result_i I0[1]
load net PCPlus4[20] -attr @rip(#000000) O[20] -pin PCNext_i I1[20] -pin PCPlus4_i O[20] -pin Result_i I0[20]
load net PCPlus4[21] -attr @rip(#000000) O[21] -pin PCNext_i I1[21] -pin PCPlus4_i O[21] -pin Result_i I0[21]
load net PCPlus4[22] -attr @rip(#000000) O[22] -pin PCNext_i I1[22] -pin PCPlus4_i O[22] -pin Result_i I0[22]
load net PCPlus4[23] -attr @rip(#000000) O[23] -pin PCNext_i I1[23] -pin PCPlus4_i O[23] -pin Result_i I0[23]
load net PCPlus4[24] -attr @rip(#000000) O[24] -pin PCNext_i I1[24] -pin PCPlus4_i O[24] -pin Result_i I0[24]
load net PCPlus4[25] -attr @rip(#000000) O[25] -pin PCNext_i I1[25] -pin PCPlus4_i O[25] -pin Result_i I0[25]
load net PCPlus4[26] -attr @rip(#000000) O[26] -pin PCNext_i I1[26] -pin PCPlus4_i O[26] -pin Result_i I0[26]
load net PCPlus4[27] -attr @rip(#000000) O[27] -pin PCNext_i I1[27] -pin PCPlus4_i O[27] -pin Result_i I0[27]
load net PCPlus4[28] -attr @rip(#000000) O[28] -pin PCNext_i I1[28] -pin PCPlus4_i O[28] -pin Result_i I0[28]
load net PCPlus4[29] -attr @rip(#000000) O[29] -pin PCNext_i I1[29] -pin PCPlus4_i O[29] -pin Result_i I0[29]
load net PCPlus4[2] -attr @rip(#000000) O[2] -pin PCNext_i I1[2] -pin PCPlus4_i O[2] -pin Result_i I0[2]
load net PCPlus4[30] -attr @rip(#000000) O[30] -pin PCNext_i I1[30] -pin PCPlus4_i O[30] -pin Result_i I0[30]
load net PCPlus4[31] -attr @rip(#000000) O[31] -pin PCNext_i I1[31] -pin PCPlus4_i O[31] -pin Result_i I0[31]
load net PCPlus4[3] -attr @rip(#000000) O[3] -pin PCNext_i I1[3] -pin PCPlus4_i O[3] -pin Result_i I0[3]
load net PCPlus4[4] -attr @rip(#000000) O[4] -pin PCNext_i I1[4] -pin PCPlus4_i O[4] -pin Result_i I0[4]
load net PCPlus4[5] -attr @rip(#000000) O[5] -pin PCNext_i I1[5] -pin PCPlus4_i O[5] -pin Result_i I0[5]
load net PCPlus4[6] -attr @rip(#000000) O[6] -pin PCNext_i I1[6] -pin PCPlus4_i O[6] -pin Result_i I0[6]
load net PCPlus4[7] -attr @rip(#000000) O[7] -pin PCNext_i I1[7] -pin PCPlus4_i O[7] -pin Result_i I0[7]
load net PCPlus4[8] -attr @rip(#000000) O[8] -pin PCNext_i I1[8] -pin PCPlus4_i O[8] -pin Result_i I0[8]
load net PCPlus4[9] -attr @rip(#000000) O[9] -pin PCNext_i I1[9] -pin PCPlus4_i O[9] -pin Result_i I0[9]
load net PCSrc -pin PCNext_i S -pin cu PCSrc
netloc PCSrc 1 4 13 1300J 450 NJ 450 NJ 450 NJ 450 NJ 450 NJ 450 NJ 450 NJ 450 NJ 450 NJ 450 4220J 430 NJ 430 4940
load net PCTarget0[0] -attr @rip(#000000) O[0] -pin PCTarget0_i O[0] -pin PCTarget_i I0[0]
load net PCTarget0[10] -attr @rip(#000000) O[10] -pin PCTarget0_i O[10] -pin PCTarget_i I0[10]
load net PCTarget0[11] -attr @rip(#000000) O[11] -pin PCTarget0_i O[11] -pin PCTarget_i I0[11]
load net PCTarget0[12] -attr @rip(#000000) O[12] -pin PCTarget0_i O[12] -pin PCTarget_i I0[12]
load net PCTarget0[13] -attr @rip(#000000) O[13] -pin PCTarget0_i O[13] -pin PCTarget_i I0[13]
load net PCTarget0[14] -attr @rip(#000000) O[14] -pin PCTarget0_i O[14] -pin PCTarget_i I0[14]
load net PCTarget0[15] -attr @rip(#000000) O[15] -pin PCTarget0_i O[15] -pin PCTarget_i I0[15]
load net PCTarget0[16] -attr @rip(#000000) O[16] -pin PCTarget0_i O[16] -pin PCTarget_i I0[16]
load net PCTarget0[17] -attr @rip(#000000) O[17] -pin PCTarget0_i O[17] -pin PCTarget_i I0[17]
load net PCTarget0[18] -attr @rip(#000000) O[18] -pin PCTarget0_i O[18] -pin PCTarget_i I0[18]
load net PCTarget0[19] -attr @rip(#000000) O[19] -pin PCTarget0_i O[19] -pin PCTarget_i I0[19]
load net PCTarget0[1] -attr @rip(#000000) O[1] -pin PCTarget0_i O[1] -pin PCTarget_i I0[1]
load net PCTarget0[20] -attr @rip(#000000) O[20] -pin PCTarget0_i O[20] -pin PCTarget_i I0[20]
load net PCTarget0[21] -attr @rip(#000000) O[21] -pin PCTarget0_i O[21] -pin PCTarget_i I0[21]
load net PCTarget0[22] -attr @rip(#000000) O[22] -pin PCTarget0_i O[22] -pin PCTarget_i I0[22]
load net PCTarget0[23] -attr @rip(#000000) O[23] -pin PCTarget0_i O[23] -pin PCTarget_i I0[23]
load net PCTarget0[24] -attr @rip(#000000) O[24] -pin PCTarget0_i O[24] -pin PCTarget_i I0[24]
load net PCTarget0[25] -attr @rip(#000000) O[25] -pin PCTarget0_i O[25] -pin PCTarget_i I0[25]
load net PCTarget0[26] -attr @rip(#000000) O[26] -pin PCTarget0_i O[26] -pin PCTarget_i I0[26]
load net PCTarget0[27] -attr @rip(#000000) O[27] -pin PCTarget0_i O[27] -pin PCTarget_i I0[27]
load net PCTarget0[28] -attr @rip(#000000) O[28] -pin PCTarget0_i O[28] -pin PCTarget_i I0[28]
load net PCTarget0[29] -attr @rip(#000000) O[29] -pin PCTarget0_i O[29] -pin PCTarget_i I0[29]
load net PCTarget0[2] -attr @rip(#000000) O[2] -pin PCTarget0_i O[2] -pin PCTarget_i I0[2]
load net PCTarget0[30] -attr @rip(#000000) O[30] -pin PCTarget0_i O[30] -pin PCTarget_i I0[30]
load net PCTarget0[31] -attr @rip(#000000) O[31] -pin PCTarget0_i O[31] -pin PCTarget_i I0[31]
load net PCTarget0[3] -attr @rip(#000000) O[3] -pin PCTarget0_i O[3] -pin PCTarget_i I0[3]
load net PCTarget0[4] -attr @rip(#000000) O[4] -pin PCTarget0_i O[4] -pin PCTarget_i I0[4]
load net PCTarget0[5] -attr @rip(#000000) O[5] -pin PCTarget0_i O[5] -pin PCTarget_i I0[5]
load net PCTarget0[6] -attr @rip(#000000) O[6] -pin PCTarget0_i O[6] -pin PCTarget_i I0[6]
load net PCTarget0[7] -attr @rip(#000000) O[7] -pin PCTarget0_i O[7] -pin PCTarget_i I0[7]
load net PCTarget0[8] -attr @rip(#000000) O[8] -pin PCTarget0_i O[8] -pin PCTarget_i I0[8]
load net PCTarget0[9] -attr @rip(#000000) O[9] -pin PCTarget0_i O[9] -pin PCTarget_i I0[9]
load net PCTarget0_i__0_n_0 -attr @rip(#000000) O[31] -pin PCTarget0_i__0 O[31] -pin PCTarget_i I1[31]
load net PCTarget0_i__0_n_1 -attr @rip(#000000) O[30] -pin PCTarget0_i__0 O[30] -pin PCTarget_i I1[30]
load net PCTarget0_i__0_n_10 -attr @rip(#000000) O[21] -pin PCTarget0_i__0 O[21] -pin PCTarget_i I1[21]
load net PCTarget0_i__0_n_11 -attr @rip(#000000) O[20] -pin PCTarget0_i__0 O[20] -pin PCTarget_i I1[20]
load net PCTarget0_i__0_n_12 -attr @rip(#000000) O[19] -pin PCTarget0_i__0 O[19] -pin PCTarget_i I1[19]
load net PCTarget0_i__0_n_13 -attr @rip(#000000) O[18] -pin PCTarget0_i__0 O[18] -pin PCTarget_i I1[18]
load net PCTarget0_i__0_n_14 -attr @rip(#000000) O[17] -pin PCTarget0_i__0 O[17] -pin PCTarget_i I1[17]
load net PCTarget0_i__0_n_15 -attr @rip(#000000) O[16] -pin PCTarget0_i__0 O[16] -pin PCTarget_i I1[16]
load net PCTarget0_i__0_n_16 -attr @rip(#000000) O[15] -pin PCTarget0_i__0 O[15] -pin PCTarget_i I1[15]
load net PCTarget0_i__0_n_17 -attr @rip(#000000) O[14] -pin PCTarget0_i__0 O[14] -pin PCTarget_i I1[14]
load net PCTarget0_i__0_n_18 -attr @rip(#000000) O[13] -pin PCTarget0_i__0 O[13] -pin PCTarget_i I1[13]
load net PCTarget0_i__0_n_19 -attr @rip(#000000) O[12] -pin PCTarget0_i__0 O[12] -pin PCTarget_i I1[12]
load net PCTarget0_i__0_n_2 -attr @rip(#000000) O[29] -pin PCTarget0_i__0 O[29] -pin PCTarget_i I1[29]
load net PCTarget0_i__0_n_20 -attr @rip(#000000) O[11] -pin PCTarget0_i__0 O[11] -pin PCTarget_i I1[11]
load net PCTarget0_i__0_n_21 -attr @rip(#000000) O[10] -pin PCTarget0_i__0 O[10] -pin PCTarget_i I1[10]
load net PCTarget0_i__0_n_22 -attr @rip(#000000) O[9] -pin PCTarget0_i__0 O[9] -pin PCTarget_i I1[9]
load net PCTarget0_i__0_n_23 -attr @rip(#000000) O[8] -pin PCTarget0_i__0 O[8] -pin PCTarget_i I1[8]
load net PCTarget0_i__0_n_24 -attr @rip(#000000) O[7] -pin PCTarget0_i__0 O[7] -pin PCTarget_i I1[7]
load net PCTarget0_i__0_n_25 -attr @rip(#000000) O[6] -pin PCTarget0_i__0 O[6] -pin PCTarget_i I1[6]
load net PCTarget0_i__0_n_26 -attr @rip(#000000) O[5] -pin PCTarget0_i__0 O[5] -pin PCTarget_i I1[5]
load net PCTarget0_i__0_n_27 -attr @rip(#000000) O[4] -pin PCTarget0_i__0 O[4] -pin PCTarget_i I1[4]
load net PCTarget0_i__0_n_28 -attr @rip(#000000) O[3] -pin PCTarget0_i__0 O[3] -pin PCTarget_i I1[3]
load net PCTarget0_i__0_n_29 -attr @rip(#000000) O[2] -pin PCTarget0_i__0 O[2] -pin PCTarget_i I1[2]
load net PCTarget0_i__0_n_3 -attr @rip(#000000) O[28] -pin PCTarget0_i__0 O[28] -pin PCTarget_i I1[28]
load net PCTarget0_i__0_n_30 -attr @rip(#000000) O[1] -pin PCTarget0_i__0 O[1] -pin PCTarget_i I1[1]
load net PCTarget0_i__0_n_31 -attr @rip(#000000) O[0] -pin PCTarget0_i__0 O[0] -pin PCTarget_i I1[0]
load net PCTarget0_i__0_n_4 -attr @rip(#000000) O[27] -pin PCTarget0_i__0 O[27] -pin PCTarget_i I1[27]
load net PCTarget0_i__0_n_5 -attr @rip(#000000) O[26] -pin PCTarget0_i__0 O[26] -pin PCTarget_i I1[26]
load net PCTarget0_i__0_n_6 -attr @rip(#000000) O[25] -pin PCTarget0_i__0 O[25] -pin PCTarget_i I1[25]
load net PCTarget0_i__0_n_7 -attr @rip(#000000) O[24] -pin PCTarget0_i__0 O[24] -pin PCTarget_i I1[24]
load net PCTarget0_i__0_n_8 -attr @rip(#000000) O[23] -pin PCTarget0_i__0 O[23] -pin PCTarget_i I1[23]
load net PCTarget0_i__0_n_9 -attr @rip(#000000) O[22] -pin PCTarget0_i__0 O[22] -pin PCTarget_i I1[22]
load net PCTarget[0] -attr @rip(#000000) O[0] -pin PCNext_i I0[0] -pin PCTarget_i O[0]
load net PCTarget[10] -attr @rip(#000000) O[10] -pin PCNext_i I0[10] -pin PCTarget_i O[10]
load net PCTarget[11] -attr @rip(#000000) O[11] -pin PCNext_i I0[11] -pin PCTarget_i O[11]
load net PCTarget[12] -attr @rip(#000000) O[12] -pin PCNext_i I0[12] -pin PCTarget_i O[12]
load net PCTarget[13] -attr @rip(#000000) O[13] -pin PCNext_i I0[13] -pin PCTarget_i O[13]
load net PCTarget[14] -attr @rip(#000000) O[14] -pin PCNext_i I0[14] -pin PCTarget_i O[14]
load net PCTarget[15] -attr @rip(#000000) O[15] -pin PCNext_i I0[15] -pin PCTarget_i O[15]
load net PCTarget[16] -attr @rip(#000000) O[16] -pin PCNext_i I0[16] -pin PCTarget_i O[16]
load net PCTarget[17] -attr @rip(#000000) O[17] -pin PCNext_i I0[17] -pin PCTarget_i O[17]
load net PCTarget[18] -attr @rip(#000000) O[18] -pin PCNext_i I0[18] -pin PCTarget_i O[18]
load net PCTarget[19] -attr @rip(#000000) O[19] -pin PCNext_i I0[19] -pin PCTarget_i O[19]
load net PCTarget[1] -attr @rip(#000000) O[1] -pin PCNext_i I0[1] -pin PCTarget_i O[1]
load net PCTarget[20] -attr @rip(#000000) O[20] -pin PCNext_i I0[20] -pin PCTarget_i O[20]
load net PCTarget[21] -attr @rip(#000000) O[21] -pin PCNext_i I0[21] -pin PCTarget_i O[21]
load net PCTarget[22] -attr @rip(#000000) O[22] -pin PCNext_i I0[22] -pin PCTarget_i O[22]
load net PCTarget[23] -attr @rip(#000000) O[23] -pin PCNext_i I0[23] -pin PCTarget_i O[23]
load net PCTarget[24] -attr @rip(#000000) O[24] -pin PCNext_i I0[24] -pin PCTarget_i O[24]
load net PCTarget[25] -attr @rip(#000000) O[25] -pin PCNext_i I0[25] -pin PCTarget_i O[25]
load net PCTarget[26] -attr @rip(#000000) O[26] -pin PCNext_i I0[26] -pin PCTarget_i O[26]
load net PCTarget[27] -attr @rip(#000000) O[27] -pin PCNext_i I0[27] -pin PCTarget_i O[27]
load net PCTarget[28] -attr @rip(#000000) O[28] -pin PCNext_i I0[28] -pin PCTarget_i O[28]
load net PCTarget[29] -attr @rip(#000000) O[29] -pin PCNext_i I0[29] -pin PCTarget_i O[29]
load net PCTarget[2] -attr @rip(#000000) O[2] -pin PCNext_i I0[2] -pin PCTarget_i O[2]
load net PCTarget[30] -attr @rip(#000000) O[30] -pin PCNext_i I0[30] -pin PCTarget_i O[30]
load net PCTarget[31] -attr @rip(#000000) O[31] -pin PCNext_i I0[31] -pin PCTarget_i O[31]
load net PCTarget[3] -attr @rip(#000000) O[3] -pin PCNext_i I0[3] -pin PCTarget_i O[3]
load net PCTarget[4] -attr @rip(#000000) O[4] -pin PCNext_i I0[4] -pin PCTarget_i O[4]
load net PCTarget[5] -attr @rip(#000000) O[5] -pin PCNext_i I0[5] -pin PCTarget_i O[5]
load net PCTarget[6] -attr @rip(#000000) O[6] -pin PCNext_i I0[6] -pin PCTarget_i O[6]
load net PCTarget[7] -attr @rip(#000000) O[7] -pin PCNext_i I0[7] -pin PCTarget_i O[7]
load net PCTarget[8] -attr @rip(#000000) O[8] -pin PCNext_i I0[8] -pin PCTarget_i O[8]
load net PCTarget[9] -attr @rip(#000000) O[9] -pin PCNext_i I0[9] -pin PCTarget_i O[9]
load net PC_reg[0] -attr @rip(#000000) 0 -pin ALUSrcA_i I0[0] -pin PCPlus4_i I0[0] -pin PCTarget0_i__0 I0[0] -pin PC_reg_reg[31:0] Q[0] -pin imem A[0]
load net PC_reg[10] -attr @rip(#000000) 10 -pin ALUSrcA_i I0[10] -pin PCPlus4_i I0[10] -pin PCTarget0_i__0 I0[10] -pin PC_reg_reg[31:0] Q[10] -pin imem A[10]
load net PC_reg[11] -attr @rip(#000000) 11 -pin ALUSrcA_i I0[11] -pin PCPlus4_i I0[11] -pin PCTarget0_i__0 I0[11] -pin PC_reg_reg[31:0] Q[11] -pin imem A[11]
load net PC_reg[12] -attr @rip(#000000) 12 -pin ALUSrcA_i I0[12] -pin PCPlus4_i I0[12] -pin PCTarget0_i__0 I0[12] -pin PC_reg_reg[31:0] Q[12] -pin imem A[12]
load net PC_reg[13] -attr @rip(#000000) 13 -pin ALUSrcA_i I0[13] -pin PCPlus4_i I0[13] -pin PCTarget0_i__0 I0[13] -pin PC_reg_reg[31:0] Q[13] -pin imem A[13]
load net PC_reg[14] -attr @rip(#000000) 14 -pin ALUSrcA_i I0[14] -pin PCPlus4_i I0[14] -pin PCTarget0_i__0 I0[14] -pin PC_reg_reg[31:0] Q[14] -pin imem A[14]
load net PC_reg[15] -attr @rip(#000000) 15 -pin ALUSrcA_i I0[15] -pin PCPlus4_i I0[15] -pin PCTarget0_i__0 I0[15] -pin PC_reg_reg[31:0] Q[15] -pin imem A[15]
load net PC_reg[16] -attr @rip(#000000) 16 -pin ALUSrcA_i I0[16] -pin PCPlus4_i I0[16] -pin PCTarget0_i__0 I0[16] -pin PC_reg_reg[31:0] Q[16] -pin imem A[16]
load net PC_reg[17] -attr @rip(#000000) 17 -pin ALUSrcA_i I0[17] -pin PCPlus4_i I0[17] -pin PCTarget0_i__0 I0[17] -pin PC_reg_reg[31:0] Q[17] -pin imem A[17]
load net PC_reg[18] -attr @rip(#000000) 18 -pin ALUSrcA_i I0[18] -pin PCPlus4_i I0[18] -pin PCTarget0_i__0 I0[18] -pin PC_reg_reg[31:0] Q[18] -pin imem A[18]
load net PC_reg[19] -attr @rip(#000000) 19 -pin ALUSrcA_i I0[19] -pin PCPlus4_i I0[19] -pin PCTarget0_i__0 I0[19] -pin PC_reg_reg[31:0] Q[19] -pin imem A[19]
load net PC_reg[1] -attr @rip(#000000) 1 -pin ALUSrcA_i I0[1] -pin PCPlus4_i I0[1] -pin PCTarget0_i__0 I0[1] -pin PC_reg_reg[31:0] Q[1] -pin imem A[1]
load net PC_reg[20] -attr @rip(#000000) 20 -pin ALUSrcA_i I0[20] -pin PCPlus4_i I0[20] -pin PCTarget0_i__0 I0[20] -pin PC_reg_reg[31:0] Q[20] -pin imem A[20]
load net PC_reg[21] -attr @rip(#000000) 21 -pin ALUSrcA_i I0[21] -pin PCPlus4_i I0[21] -pin PCTarget0_i__0 I0[21] -pin PC_reg_reg[31:0] Q[21] -pin imem A[21]
load net PC_reg[22] -attr @rip(#000000) 22 -pin ALUSrcA_i I0[22] -pin PCPlus4_i I0[22] -pin PCTarget0_i__0 I0[22] -pin PC_reg_reg[31:0] Q[22] -pin imem A[22]
load net PC_reg[23] -attr @rip(#000000) 23 -pin ALUSrcA_i I0[23] -pin PCPlus4_i I0[23] -pin PCTarget0_i__0 I0[23] -pin PC_reg_reg[31:0] Q[23] -pin imem A[23]
load net PC_reg[24] -attr @rip(#000000) 24 -pin ALUSrcA_i I0[24] -pin PCPlus4_i I0[24] -pin PCTarget0_i__0 I0[24] -pin PC_reg_reg[31:0] Q[24] -pin imem A[24]
load net PC_reg[25] -attr @rip(#000000) 25 -pin ALUSrcA_i I0[25] -pin PCPlus4_i I0[25] -pin PCTarget0_i__0 I0[25] -pin PC_reg_reg[31:0] Q[25] -pin imem A[25]
load net PC_reg[26] -attr @rip(#000000) 26 -pin ALUSrcA_i I0[26] -pin PCPlus4_i I0[26] -pin PCTarget0_i__0 I0[26] -pin PC_reg_reg[31:0] Q[26] -pin imem A[26]
load net PC_reg[27] -attr @rip(#000000) 27 -pin ALUSrcA_i I0[27] -pin PCPlus4_i I0[27] -pin PCTarget0_i__0 I0[27] -pin PC_reg_reg[31:0] Q[27] -pin imem A[27]
load net PC_reg[28] -attr @rip(#000000) 28 -pin ALUSrcA_i I0[28] -pin PCPlus4_i I0[28] -pin PCTarget0_i__0 I0[28] -pin PC_reg_reg[31:0] Q[28] -pin imem A[28]
load net PC_reg[29] -attr @rip(#000000) 29 -pin ALUSrcA_i I0[29] -pin PCPlus4_i I0[29] -pin PCTarget0_i__0 I0[29] -pin PC_reg_reg[31:0] Q[29] -pin imem A[29]
load net PC_reg[2] -attr @rip(#000000) 2 -pin ALUSrcA_i I0[2] -pin PCPlus4_i I0[2] -pin PCTarget0_i__0 I0[2] -pin PC_reg_reg[31:0] Q[2] -pin imem A[2]
load net PC_reg[30] -attr @rip(#000000) 30 -pin ALUSrcA_i I0[30] -pin PCPlus4_i I0[30] -pin PCTarget0_i__0 I0[30] -pin PC_reg_reg[31:0] Q[30] -pin imem A[30]
load net PC_reg[31] -attr @rip(#000000) 31 -pin ALUSrcA_i I0[31] -pin PCPlus4_i I0[31] -pin PCTarget0_i__0 I0[31] -pin PC_reg_reg[31:0] Q[31] -pin imem A[31]
load net PC_reg[3] -attr @rip(#000000) 3 -pin ALUSrcA_i I0[3] -pin PCPlus4_i I0[3] -pin PCTarget0_i__0 I0[3] -pin PC_reg_reg[31:0] Q[3] -pin imem A[3]
load net PC_reg[4] -attr @rip(#000000) 4 -pin ALUSrcA_i I0[4] -pin PCPlus4_i I0[4] -pin PCTarget0_i__0 I0[4] -pin PC_reg_reg[31:0] Q[4] -pin imem A[4]
load net PC_reg[5] -attr @rip(#000000) 5 -pin ALUSrcA_i I0[5] -pin PCPlus4_i I0[5] -pin PCTarget0_i__0 I0[5] -pin PC_reg_reg[31:0] Q[5] -pin imem A[5]
load net PC_reg[6] -attr @rip(#000000) 6 -pin ALUSrcA_i I0[6] -pin PCPlus4_i I0[6] -pin PCTarget0_i__0 I0[6] -pin PC_reg_reg[31:0] Q[6] -pin imem A[6]
load net PC_reg[7] -attr @rip(#000000) 7 -pin ALUSrcA_i I0[7] -pin PCPlus4_i I0[7] -pin PCTarget0_i__0 I0[7] -pin PC_reg_reg[31:0] Q[7] -pin imem A[7]
load net PC_reg[8] -attr @rip(#000000) 8 -pin ALUSrcA_i I0[8] -pin PCPlus4_i I0[8] -pin PCTarget0_i__0 I0[8] -pin PC_reg_reg[31:0] Q[8] -pin imem A[8]
load net PC_reg[9] -attr @rip(#000000) 9 -pin ALUSrcA_i I0[9] -pin PCPlus4_i I0[9] -pin PCTarget0_i__0 I0[9] -pin PC_reg_reg[31:0] Q[9] -pin imem A[9]
load net RD2[0] -attr @rip(#000000) RD2[0] -pin SrcB_i I1[0] -pin rf RD2[0] -pin sh Data_in[0]
load net RD2[10] -attr @rip(#000000) RD2[10] -pin SrcB_i I1[10] -pin rf RD2[10] -pin sh Data_in[10]
load net RD2[11] -attr @rip(#000000) RD2[11] -pin SrcB_i I1[11] -pin rf RD2[11] -pin sh Data_in[11]
load net RD2[12] -attr @rip(#000000) RD2[12] -pin SrcB_i I1[12] -pin rf RD2[12] -pin sh Data_in[12]
load net RD2[13] -attr @rip(#000000) RD2[13] -pin SrcB_i I1[13] -pin rf RD2[13] -pin sh Data_in[13]
load net RD2[14] -attr @rip(#000000) RD2[14] -pin SrcB_i I1[14] -pin rf RD2[14] -pin sh Data_in[14]
load net RD2[15] -attr @rip(#000000) RD2[15] -pin SrcB_i I1[15] -pin rf RD2[15] -pin sh Data_in[15]
load net RD2[16] -attr @rip(#000000) RD2[16] -pin SrcB_i I1[16] -pin rf RD2[16] -pin sh Data_in[16]
load net RD2[17] -attr @rip(#000000) RD2[17] -pin SrcB_i I1[17] -pin rf RD2[17] -pin sh Data_in[17]
load net RD2[18] -attr @rip(#000000) RD2[18] -pin SrcB_i I1[18] -pin rf RD2[18] -pin sh Data_in[18]
load net RD2[19] -attr @rip(#000000) RD2[19] -pin SrcB_i I1[19] -pin rf RD2[19] -pin sh Data_in[19]
load net RD2[1] -attr @rip(#000000) RD2[1] -pin SrcB_i I1[1] -pin rf RD2[1] -pin sh Data_in[1]
load net RD2[20] -attr @rip(#000000) RD2[20] -pin SrcB_i I1[20] -pin rf RD2[20] -pin sh Data_in[20]
load net RD2[21] -attr @rip(#000000) RD2[21] -pin SrcB_i I1[21] -pin rf RD2[21] -pin sh Data_in[21]
load net RD2[22] -attr @rip(#000000) RD2[22] -pin SrcB_i I1[22] -pin rf RD2[22] -pin sh Data_in[22]
load net RD2[23] -attr @rip(#000000) RD2[23] -pin SrcB_i I1[23] -pin rf RD2[23] -pin sh Data_in[23]
load net RD2[24] -attr @rip(#000000) RD2[24] -pin SrcB_i I1[24] -pin rf RD2[24] -pin sh Data_in[24]
load net RD2[25] -attr @rip(#000000) RD2[25] -pin SrcB_i I1[25] -pin rf RD2[25] -pin sh Data_in[25]
load net RD2[26] -attr @rip(#000000) RD2[26] -pin SrcB_i I1[26] -pin rf RD2[26] -pin sh Data_in[26]
load net RD2[27] -attr @rip(#000000) RD2[27] -pin SrcB_i I1[27] -pin rf RD2[27] -pin sh Data_in[27]
load net RD2[28] -attr @rip(#000000) RD2[28] -pin SrcB_i I1[28] -pin rf RD2[28] -pin sh Data_in[28]
load net RD2[29] -attr @rip(#000000) RD2[29] -pin SrcB_i I1[29] -pin rf RD2[29] -pin sh Data_in[29]
load net RD2[2] -attr @rip(#000000) RD2[2] -pin SrcB_i I1[2] -pin rf RD2[2] -pin sh Data_in[2]
load net RD2[30] -attr @rip(#000000) RD2[30] -pin SrcB_i I1[30] -pin rf RD2[30] -pin sh Data_in[30]
load net RD2[31] -attr @rip(#000000) RD2[31] -pin SrcB_i I1[31] -pin rf RD2[31] -pin sh Data_in[31]
load net RD2[3] -attr @rip(#000000) RD2[3] -pin SrcB_i I1[3] -pin rf RD2[3] -pin sh Data_in[3]
load net RD2[4] -attr @rip(#000000) RD2[4] -pin SrcB_i I1[4] -pin rf RD2[4] -pin sh Data_in[4]
load net RD2[5] -attr @rip(#000000) RD2[5] -pin SrcB_i I1[5] -pin rf RD2[5] -pin sh Data_in[5]
load net RD2[6] -attr @rip(#000000) RD2[6] -pin SrcB_i I1[6] -pin rf RD2[6] -pin sh Data_in[6]
load net RD2[7] -attr @rip(#000000) RD2[7] -pin SrcB_i I1[7] -pin rf RD2[7] -pin sh Data_in[7]
load net RD2[8] -attr @rip(#000000) RD2[8] -pin SrcB_i I1[8] -pin rf RD2[8] -pin sh Data_in[8]
load net RD2[9] -attr @rip(#000000) RD2[9] -pin SrcB_i I1[9] -pin rf RD2[9] -pin sh Data_in[9]
load net ReadData[0] -attr @rip(#000000) RD[0] -pin dmem RD[0] -pin lh ReadData[0]
load net ReadData[10] -attr @rip(#000000) RD[10] -pin dmem RD[10] -pin lh ReadData[10]
load net ReadData[11] -attr @rip(#000000) RD[11] -pin dmem RD[11] -pin lh ReadData[11]
load net ReadData[12] -attr @rip(#000000) RD[12] -pin dmem RD[12] -pin lh ReadData[12]
load net ReadData[13] -attr @rip(#000000) RD[13] -pin dmem RD[13] -pin lh ReadData[13]
load net ReadData[14] -attr @rip(#000000) RD[14] -pin dmem RD[14] -pin lh ReadData[14]
load net ReadData[15] -attr @rip(#000000) RD[15] -pin dmem RD[15] -pin lh ReadData[15]
load net ReadData[16] -attr @rip(#000000) RD[16] -pin dmem RD[16] -pin lh ReadData[16]
load net ReadData[17] -attr @rip(#000000) RD[17] -pin dmem RD[17] -pin lh ReadData[17]
load net ReadData[18] -attr @rip(#000000) RD[18] -pin dmem RD[18] -pin lh ReadData[18]
load net ReadData[19] -attr @rip(#000000) RD[19] -pin dmem RD[19] -pin lh ReadData[19]
load net ReadData[1] -attr @rip(#000000) RD[1] -pin dmem RD[1] -pin lh ReadData[1]
load net ReadData[20] -attr @rip(#000000) RD[20] -pin dmem RD[20] -pin lh ReadData[20]
load net ReadData[21] -attr @rip(#000000) RD[21] -pin dmem RD[21] -pin lh ReadData[21]
load net ReadData[22] -attr @rip(#000000) RD[22] -pin dmem RD[22] -pin lh ReadData[22]
load net ReadData[23] -attr @rip(#000000) RD[23] -pin dmem RD[23] -pin lh ReadData[23]
load net ReadData[24] -attr @rip(#000000) RD[24] -pin dmem RD[24] -pin lh ReadData[24]
load net ReadData[25] -attr @rip(#000000) RD[25] -pin dmem RD[25] -pin lh ReadData[25]
load net ReadData[26] -attr @rip(#000000) RD[26] -pin dmem RD[26] -pin lh ReadData[26]
load net ReadData[27] -attr @rip(#000000) RD[27] -pin dmem RD[27] -pin lh ReadData[27]
load net ReadData[28] -attr @rip(#000000) RD[28] -pin dmem RD[28] -pin lh ReadData[28]
load net ReadData[29] -attr @rip(#000000) RD[29] -pin dmem RD[29] -pin lh ReadData[29]
load net ReadData[2] -attr @rip(#000000) RD[2] -pin dmem RD[2] -pin lh ReadData[2]
load net ReadData[30] -attr @rip(#000000) RD[30] -pin dmem RD[30] -pin lh ReadData[30]
load net ReadData[31] -attr @rip(#000000) RD[31] -pin dmem RD[31] -pin lh ReadData[31]
load net ReadData[3] -attr @rip(#000000) RD[3] -pin dmem RD[3] -pin lh ReadData[3]
load net ReadData[4] -attr @rip(#000000) RD[4] -pin dmem RD[4] -pin lh ReadData[4]
load net ReadData[5] -attr @rip(#000000) RD[5] -pin dmem RD[5] -pin lh ReadData[5]
load net ReadData[6] -attr @rip(#000000) RD[6] -pin dmem RD[6] -pin lh ReadData[6]
load net ReadData[7] -attr @rip(#000000) RD[7] -pin dmem RD[7] -pin lh ReadData[7]
load net ReadData[8] -attr @rip(#000000) RD[8] -pin dmem RD[8] -pin lh ReadData[8]
load net ReadData[9] -attr @rip(#000000) RD[9] -pin dmem RD[9] -pin lh ReadData[9]
load net RegWrite -pin cu RegWrite -pin rf WE3
netloc RegWrite 1 12 5 3660 390 NJ 390 NJ 390 NJ 390 4920
load net Result0_i_n_0 -attr @rip(#000000) O[31] -pin Result0_i O[31] -pin Result_i I1[31]
load net Result0_i_n_1 -attr @rip(#000000) O[30] -pin Result0_i O[30] -pin Result_i I1[30]
load net Result0_i_n_10 -attr @rip(#000000) O[21] -pin Result0_i O[21] -pin Result_i I1[21]
load net Result0_i_n_11 -attr @rip(#000000) O[20] -pin Result0_i O[20] -pin Result_i I1[20]
load net Result0_i_n_12 -attr @rip(#000000) O[19] -pin Result0_i O[19] -pin Result_i I1[19]
load net Result0_i_n_13 -attr @rip(#000000) O[18] -pin Result0_i O[18] -pin Result_i I1[18]
load net Result0_i_n_14 -attr @rip(#000000) O[17] -pin Result0_i O[17] -pin Result_i I1[17]
load net Result0_i_n_15 -attr @rip(#000000) O[16] -pin Result0_i O[16] -pin Result_i I1[16]
load net Result0_i_n_16 -attr @rip(#000000) O[15] -pin Result0_i O[15] -pin Result_i I1[15]
load net Result0_i_n_17 -attr @rip(#000000) O[14] -pin Result0_i O[14] -pin Result_i I1[14]
load net Result0_i_n_18 -attr @rip(#000000) O[13] -pin Result0_i O[13] -pin Result_i I1[13]
load net Result0_i_n_19 -attr @rip(#000000) O[12] -pin Result0_i O[12] -pin Result_i I1[12]
load net Result0_i_n_2 -attr @rip(#000000) O[29] -pin Result0_i O[29] -pin Result_i I1[29]
load net Result0_i_n_20 -attr @rip(#000000) O[11] -pin Result0_i O[11] -pin Result_i I1[11]
load net Result0_i_n_21 -attr @rip(#000000) O[10] -pin Result0_i O[10] -pin Result_i I1[10]
load net Result0_i_n_22 -attr @rip(#000000) O[9] -pin Result0_i O[9] -pin Result_i I1[9]
load net Result0_i_n_23 -attr @rip(#000000) O[8] -pin Result0_i O[8] -pin Result_i I1[8]
load net Result0_i_n_24 -attr @rip(#000000) O[7] -pin Result0_i O[7] -pin Result_i I1[7]
load net Result0_i_n_25 -attr @rip(#000000) O[6] -pin Result0_i O[6] -pin Result_i I1[6]
load net Result0_i_n_26 -attr @rip(#000000) O[5] -pin Result0_i O[5] -pin Result_i I1[5]
load net Result0_i_n_27 -attr @rip(#000000) O[4] -pin Result0_i O[4] -pin Result_i I1[4]
load net Result0_i_n_28 -attr @rip(#000000) O[3] -pin Result0_i O[3] -pin Result_i I1[3]
load net Result0_i_n_29 -attr @rip(#000000) O[2] -pin Result0_i O[2] -pin Result_i I1[2]
load net Result0_i_n_3 -attr @rip(#000000) O[28] -pin Result0_i O[28] -pin Result_i I1[28]
load net Result0_i_n_30 -attr @rip(#000000) O[1] -pin Result0_i O[1] -pin Result_i I1[1]
load net Result0_i_n_31 -attr @rip(#000000) O[0] -pin Result0_i O[0] -pin Result_i I1[0]
load net Result0_i_n_4 -attr @rip(#000000) O[27] -pin Result0_i O[27] -pin Result_i I1[27]
load net Result0_i_n_5 -attr @rip(#000000) O[26] -pin Result0_i O[26] -pin Result_i I1[26]
load net Result0_i_n_6 -attr @rip(#000000) O[25] -pin Result0_i O[25] -pin Result_i I1[25]
load net Result0_i_n_7 -attr @rip(#000000) O[24] -pin Result0_i O[24] -pin Result_i I1[24]
load net Result0_i_n_8 -attr @rip(#000000) O[23] -pin Result0_i O[23] -pin Result_i I1[23]
load net Result0_i_n_9 -attr @rip(#000000) O[22] -pin Result0_i O[22] -pin Result_i I1[22]
load net Result1_i_n_0 -attr @rip(#000000) O[31] -pin Result0_i I1[31] -pin Result1_i O[31]
load net Result1_i_n_1 -attr @rip(#000000) O[30] -pin Result0_i I1[30] -pin Result1_i O[30]
load net Result1_i_n_10 -attr @rip(#000000) O[21] -pin Result0_i I1[21] -pin Result1_i O[21]
load net Result1_i_n_11 -attr @rip(#000000) O[20] -pin Result0_i I1[20] -pin Result1_i O[20]
load net Result1_i_n_12 -attr @rip(#000000) O[19] -pin Result0_i I1[19] -pin Result1_i O[19]
load net Result1_i_n_13 -attr @rip(#000000) O[18] -pin Result0_i I1[18] -pin Result1_i O[18]
load net Result1_i_n_14 -attr @rip(#000000) O[17] -pin Result0_i I1[17] -pin Result1_i O[17]
load net Result1_i_n_15 -attr @rip(#000000) O[16] -pin Result0_i I1[16] -pin Result1_i O[16]
load net Result1_i_n_16 -attr @rip(#000000) O[15] -pin Result0_i I1[15] -pin Result1_i O[15]
load net Result1_i_n_17 -attr @rip(#000000) O[14] -pin Result0_i I1[14] -pin Result1_i O[14]
load net Result1_i_n_18 -attr @rip(#000000) O[13] -pin Result0_i I1[13] -pin Result1_i O[13]
load net Result1_i_n_19 -attr @rip(#000000) O[12] -pin Result0_i I1[12] -pin Result1_i O[12]
load net Result1_i_n_2 -attr @rip(#000000) O[29] -pin Result0_i I1[29] -pin Result1_i O[29]
load net Result1_i_n_20 -attr @rip(#000000) O[11] -pin Result0_i I1[11] -pin Result1_i O[11]
load net Result1_i_n_21 -attr @rip(#000000) O[10] -pin Result0_i I1[10] -pin Result1_i O[10]
load net Result1_i_n_22 -attr @rip(#000000) O[9] -pin Result0_i I1[9] -pin Result1_i O[9]
load net Result1_i_n_23 -attr @rip(#000000) O[8] -pin Result0_i I1[8] -pin Result1_i O[8]
load net Result1_i_n_24 -attr @rip(#000000) O[7] -pin Result0_i I1[7] -pin Result1_i O[7]
load net Result1_i_n_25 -attr @rip(#000000) O[6] -pin Result0_i I1[6] -pin Result1_i O[6]
load net Result1_i_n_26 -attr @rip(#000000) O[5] -pin Result0_i I1[5] -pin Result1_i O[5]
load net Result1_i_n_27 -attr @rip(#000000) O[4] -pin Result0_i I1[4] -pin Result1_i O[4]
load net Result1_i_n_28 -attr @rip(#000000) O[3] -pin Result0_i I1[3] -pin Result1_i O[3]
load net Result1_i_n_29 -attr @rip(#000000) O[2] -pin Result0_i I1[2] -pin Result1_i O[2]
load net Result1_i_n_3 -attr @rip(#000000) O[28] -pin Result0_i I1[28] -pin Result1_i O[28]
load net Result1_i_n_30 -attr @rip(#000000) O[1] -pin Result0_i I1[1] -pin Result1_i O[1]
load net Result1_i_n_31 -attr @rip(#000000) O[0] -pin Result0_i I1[0] -pin Result1_i O[0]
load net Result1_i_n_4 -attr @rip(#000000) O[27] -pin Result0_i I1[27] -pin Result1_i O[27]
load net Result1_i_n_5 -attr @rip(#000000) O[26] -pin Result0_i I1[26] -pin Result1_i O[26]
load net Result1_i_n_6 -attr @rip(#000000) O[25] -pin Result0_i I1[25] -pin Result1_i O[25]
load net Result1_i_n_7 -attr @rip(#000000) O[24] -pin Result0_i I1[24] -pin Result1_i O[24]
load net Result1_i_n_8 -attr @rip(#000000) O[23] -pin Result0_i I1[23] -pin Result1_i O[23]
load net Result1_i_n_9 -attr @rip(#000000) O[22] -pin Result0_i I1[22] -pin Result1_i O[22]
load net ResultSrc -pin Result1_i S -pin cu ResultSrc
netloc ResultSrc 1 10 7 3000J 350 NJ 350 NJ 350 NJ 350 NJ 350 NJ 350 4900
load net Result[0] -attr @rip(#000000) O[0] -pin Result_i O[0] -pin rf WD3[0]
load net Result[10] -attr @rip(#000000) O[10] -pin Result_i O[10] -pin rf WD3[10]
load net Result[11] -attr @rip(#000000) O[11] -pin Result_i O[11] -pin rf WD3[11]
load net Result[12] -attr @rip(#000000) O[12] -pin Result_i O[12] -pin rf WD3[12]
load net Result[13] -attr @rip(#000000) O[13] -pin Result_i O[13] -pin rf WD3[13]
load net Result[14] -attr @rip(#000000) O[14] -pin Result_i O[14] -pin rf WD3[14]
load net Result[15] -attr @rip(#000000) O[15] -pin Result_i O[15] -pin rf WD3[15]
load net Result[16] -attr @rip(#000000) O[16] -pin Result_i O[16] -pin rf WD3[16]
load net Result[17] -attr @rip(#000000) O[17] -pin Result_i O[17] -pin rf WD3[17]
load net Result[18] -attr @rip(#000000) O[18] -pin Result_i O[18] -pin rf WD3[18]
load net Result[19] -attr @rip(#000000) O[19] -pin Result_i O[19] -pin rf WD3[19]
load net Result[1] -attr @rip(#000000) O[1] -pin Result_i O[1] -pin rf WD3[1]
load net Result[20] -attr @rip(#000000) O[20] -pin Result_i O[20] -pin rf WD3[20]
load net Result[21] -attr @rip(#000000) O[21] -pin Result_i O[21] -pin rf WD3[21]
load net Result[22] -attr @rip(#000000) O[22] -pin Result_i O[22] -pin rf WD3[22]
load net Result[23] -attr @rip(#000000) O[23] -pin Result_i O[23] -pin rf WD3[23]
load net Result[24] -attr @rip(#000000) O[24] -pin Result_i O[24] -pin rf WD3[24]
load net Result[25] -attr @rip(#000000) O[25] -pin Result_i O[25] -pin rf WD3[25]
load net Result[26] -attr @rip(#000000) O[26] -pin Result_i O[26] -pin rf WD3[26]
load net Result[27] -attr @rip(#000000) O[27] -pin Result_i O[27] -pin rf WD3[27]
load net Result[28] -attr @rip(#000000) O[28] -pin Result_i O[28] -pin rf WD3[28]
load net Result[29] -attr @rip(#000000) O[29] -pin Result_i O[29] -pin rf WD3[29]
load net Result[2] -attr @rip(#000000) O[2] -pin Result_i O[2] -pin rf WD3[2]
load net Result[30] -attr @rip(#000000) O[30] -pin Result_i O[30] -pin rf WD3[30]
load net Result[31] -attr @rip(#000000) O[31] -pin Result_i O[31] -pin rf WD3[31]
load net Result[3] -attr @rip(#000000) O[3] -pin Result_i O[3] -pin rf WD3[3]
load net Result[4] -attr @rip(#000000) O[4] -pin Result_i O[4] -pin rf WD3[4]
load net Result[5] -attr @rip(#000000) O[5] -pin Result_i O[5] -pin rf WD3[5]
load net Result[6] -attr @rip(#000000) O[6] -pin Result_i O[6] -pin rf WD3[6]
load net Result[7] -attr @rip(#000000) O[7] -pin Result_i O[7] -pin rf WD3[7]
load net Result[8] -attr @rip(#000000) O[8] -pin Result_i O[8] -pin rf WD3[8]
load net Result[9] -attr @rip(#000000) O[9] -pin Result_i O[9] -pin rf WD3[9]
load net SrcA[0] -attr @rip(#000000) RD1[0] -pin ALUSrcA_i I1[0] -pin rf RD1[0]
load net SrcA[10] -attr @rip(#000000) RD1[10] -pin ALUSrcA_i I1[10] -pin rf RD1[10]
load net SrcA[11] -attr @rip(#000000) RD1[11] -pin ALUSrcA_i I1[11] -pin rf RD1[11]
load net SrcA[12] -attr @rip(#000000) RD1[12] -pin ALUSrcA_i I1[12] -pin rf RD1[12]
load net SrcA[13] -attr @rip(#000000) RD1[13] -pin ALUSrcA_i I1[13] -pin rf RD1[13]
load net SrcA[14] -attr @rip(#000000) RD1[14] -pin ALUSrcA_i I1[14] -pin rf RD1[14]
load net SrcA[15] -attr @rip(#000000) RD1[15] -pin ALUSrcA_i I1[15] -pin rf RD1[15]
load net SrcA[16] -attr @rip(#000000) RD1[16] -pin ALUSrcA_i I1[16] -pin rf RD1[16]
load net SrcA[17] -attr @rip(#000000) RD1[17] -pin ALUSrcA_i I1[17] -pin rf RD1[17]
load net SrcA[18] -attr @rip(#000000) RD1[18] -pin ALUSrcA_i I1[18] -pin rf RD1[18]
load net SrcA[19] -attr @rip(#000000) RD1[19] -pin ALUSrcA_i I1[19] -pin rf RD1[19]
load net SrcA[1] -attr @rip(#000000) RD1[1] -pin ALUSrcA_i I1[1] -pin rf RD1[1]
load net SrcA[20] -attr @rip(#000000) RD1[20] -pin ALUSrcA_i I1[20] -pin rf RD1[20]
load net SrcA[21] -attr @rip(#000000) RD1[21] -pin ALUSrcA_i I1[21] -pin rf RD1[21]
load net SrcA[22] -attr @rip(#000000) RD1[22] -pin ALUSrcA_i I1[22] -pin rf RD1[22]
load net SrcA[23] -attr @rip(#000000) RD1[23] -pin ALUSrcA_i I1[23] -pin rf RD1[23]
load net SrcA[24] -attr @rip(#000000) RD1[24] -pin ALUSrcA_i I1[24] -pin rf RD1[24]
load net SrcA[25] -attr @rip(#000000) RD1[25] -pin ALUSrcA_i I1[25] -pin rf RD1[25]
load net SrcA[26] -attr @rip(#000000) RD1[26] -pin ALUSrcA_i I1[26] -pin rf RD1[26]
load net SrcA[27] -attr @rip(#000000) RD1[27] -pin ALUSrcA_i I1[27] -pin rf RD1[27]
load net SrcA[28] -attr @rip(#000000) RD1[28] -pin ALUSrcA_i I1[28] -pin rf RD1[28]
load net SrcA[29] -attr @rip(#000000) RD1[29] -pin ALUSrcA_i I1[29] -pin rf RD1[29]
load net SrcA[2] -attr @rip(#000000) RD1[2] -pin ALUSrcA_i I1[2] -pin rf RD1[2]
load net SrcA[30] -attr @rip(#000000) RD1[30] -pin ALUSrcA_i I1[30] -pin rf RD1[30]
load net SrcA[31] -attr @rip(#000000) RD1[31] -pin ALUSrcA_i I1[31] -pin rf RD1[31]
load net SrcA[3] -attr @rip(#000000) RD1[3] -pin ALUSrcA_i I1[3] -pin rf RD1[3]
load net SrcA[4] -attr @rip(#000000) RD1[4] -pin ALUSrcA_i I1[4] -pin rf RD1[4]
load net SrcA[5] -attr @rip(#000000) RD1[5] -pin ALUSrcA_i I1[5] -pin rf RD1[5]
load net SrcA[6] -attr @rip(#000000) RD1[6] -pin ALUSrcA_i I1[6] -pin rf RD1[6]
load net SrcA[7] -attr @rip(#000000) RD1[7] -pin ALUSrcA_i I1[7] -pin rf RD1[7]
load net SrcA[8] -attr @rip(#000000) RD1[8] -pin ALUSrcA_i I1[8] -pin rf RD1[8]
load net SrcA[9] -attr @rip(#000000) RD1[9] -pin ALUSrcA_i I1[9] -pin rf RD1[9]
load net SrcB[0] -attr @rip(#000000) O[0] -pin SrcB_i O[0] -pin main_alu SrcB[0]
load net SrcB[10] -attr @rip(#000000) O[10] -pin SrcB_i O[10] -pin main_alu SrcB[10]
load net SrcB[11] -attr @rip(#000000) O[11] -pin SrcB_i O[11] -pin main_alu SrcB[11]
load net SrcB[12] -attr @rip(#000000) O[12] -pin SrcB_i O[12] -pin main_alu SrcB[12]
load net SrcB[13] -attr @rip(#000000) O[13] -pin SrcB_i O[13] -pin main_alu SrcB[13]
load net SrcB[14] -attr @rip(#000000) O[14] -pin SrcB_i O[14] -pin main_alu SrcB[14]
load net SrcB[15] -attr @rip(#000000) O[15] -pin SrcB_i O[15] -pin main_alu SrcB[15]
load net SrcB[16] -attr @rip(#000000) O[16] -pin SrcB_i O[16] -pin main_alu SrcB[16]
load net SrcB[17] -attr @rip(#000000) O[17] -pin SrcB_i O[17] -pin main_alu SrcB[17]
load net SrcB[18] -attr @rip(#000000) O[18] -pin SrcB_i O[18] -pin main_alu SrcB[18]
load net SrcB[19] -attr @rip(#000000) O[19] -pin SrcB_i O[19] -pin main_alu SrcB[19]
load net SrcB[1] -attr @rip(#000000) O[1] -pin SrcB_i O[1] -pin main_alu SrcB[1]
load net SrcB[20] -attr @rip(#000000) O[20] -pin SrcB_i O[20] -pin main_alu SrcB[20]
load net SrcB[21] -attr @rip(#000000) O[21] -pin SrcB_i O[21] -pin main_alu SrcB[21]
load net SrcB[22] -attr @rip(#000000) O[22] -pin SrcB_i O[22] -pin main_alu SrcB[22]
load net SrcB[23] -attr @rip(#000000) O[23] -pin SrcB_i O[23] -pin main_alu SrcB[23]
load net SrcB[24] -attr @rip(#000000) O[24] -pin SrcB_i O[24] -pin main_alu SrcB[24]
load net SrcB[25] -attr @rip(#000000) O[25] -pin SrcB_i O[25] -pin main_alu SrcB[25]
load net SrcB[26] -attr @rip(#000000) O[26] -pin SrcB_i O[26] -pin main_alu SrcB[26]
load net SrcB[27] -attr @rip(#000000) O[27] -pin SrcB_i O[27] -pin main_alu SrcB[27]
load net SrcB[28] -attr @rip(#000000) O[28] -pin SrcB_i O[28] -pin main_alu SrcB[28]
load net SrcB[29] -attr @rip(#000000) O[29] -pin SrcB_i O[29] -pin main_alu SrcB[29]
load net SrcB[2] -attr @rip(#000000) O[2] -pin SrcB_i O[2] -pin main_alu SrcB[2]
load net SrcB[30] -attr @rip(#000000) O[30] -pin SrcB_i O[30] -pin main_alu SrcB[30]
load net SrcB[31] -attr @rip(#000000) O[31] -pin SrcB_i O[31] -pin main_alu SrcB[31]
load net SrcB[3] -attr @rip(#000000) O[3] -pin SrcB_i O[3] -pin main_alu SrcB[3]
load net SrcB[4] -attr @rip(#000000) O[4] -pin SrcB_i O[4] -pin main_alu SrcB[4]
load net SrcB[5] -attr @rip(#000000) O[5] -pin SrcB_i O[5] -pin main_alu SrcB[5]
load net SrcB[6] -attr @rip(#000000) O[6] -pin SrcB_i O[6] -pin main_alu SrcB[6]
load net SrcB[7] -attr @rip(#000000) O[7] -pin SrcB_i O[7] -pin main_alu SrcB[7]
load net SrcB[8] -attr @rip(#000000) O[8] -pin SrcB_i O[8] -pin main_alu SrcB[8]
load net SrcB[9] -attr @rip(#000000) O[9] -pin SrcB_i O[9] -pin main_alu SrcB[9]
load net WriteData[0] -attr @rip(#000000) store_Data[0] -pin dmem WD[0] -pin sh store_Data[0]
load net WriteData[10] -attr @rip(#000000) store_Data[10] -pin dmem WD[10] -pin sh store_Data[10]
load net WriteData[11] -attr @rip(#000000) store_Data[11] -pin dmem WD[11] -pin sh store_Data[11]
load net WriteData[12] -attr @rip(#000000) store_Data[12] -pin dmem WD[12] -pin sh store_Data[12]
load net WriteData[13] -attr @rip(#000000) store_Data[13] -pin dmem WD[13] -pin sh store_Data[13]
load net WriteData[14] -attr @rip(#000000) store_Data[14] -pin dmem WD[14] -pin sh store_Data[14]
load net WriteData[15] -attr @rip(#000000) store_Data[15] -pin dmem WD[15] -pin sh store_Data[15]
load net WriteData[16] -attr @rip(#000000) store_Data[16] -pin dmem WD[16] -pin sh store_Data[16]
load net WriteData[17] -attr @rip(#000000) store_Data[17] -pin dmem WD[17] -pin sh store_Data[17]
load net WriteData[18] -attr @rip(#000000) store_Data[18] -pin dmem WD[18] -pin sh store_Data[18]
load net WriteData[19] -attr @rip(#000000) store_Data[19] -pin dmem WD[19] -pin sh store_Data[19]
load net WriteData[1] -attr @rip(#000000) store_Data[1] -pin dmem WD[1] -pin sh store_Data[1]
load net WriteData[20] -attr @rip(#000000) store_Data[20] -pin dmem WD[20] -pin sh store_Data[20]
load net WriteData[21] -attr @rip(#000000) store_Data[21] -pin dmem WD[21] -pin sh store_Data[21]
load net WriteData[22] -attr @rip(#000000) store_Data[22] -pin dmem WD[22] -pin sh store_Data[22]
load net WriteData[23] -attr @rip(#000000) store_Data[23] -pin dmem WD[23] -pin sh store_Data[23]
load net WriteData[24] -attr @rip(#000000) store_Data[24] -pin dmem WD[24] -pin sh store_Data[24]
load net WriteData[25] -attr @rip(#000000) store_Data[25] -pin dmem WD[25] -pin sh store_Data[25]
load net WriteData[26] -attr @rip(#000000) store_Data[26] -pin dmem WD[26] -pin sh store_Data[26]
load net WriteData[27] -attr @rip(#000000) store_Data[27] -pin dmem WD[27] -pin sh store_Data[27]
load net WriteData[28] -attr @rip(#000000) store_Data[28] -pin dmem WD[28] -pin sh store_Data[28]
load net WriteData[29] -attr @rip(#000000) store_Data[29] -pin dmem WD[29] -pin sh store_Data[29]
load net WriteData[2] -attr @rip(#000000) store_Data[2] -pin dmem WD[2] -pin sh store_Data[2]
load net WriteData[30] -attr @rip(#000000) store_Data[30] -pin dmem WD[30] -pin sh store_Data[30]
load net WriteData[31] -attr @rip(#000000) store_Data[31] -pin dmem WD[31] -pin sh store_Data[31]
load net WriteData[3] -attr @rip(#000000) store_Data[3] -pin dmem WD[3] -pin sh store_Data[3]
load net WriteData[4] -attr @rip(#000000) store_Data[4] -pin dmem WD[4] -pin sh store_Data[4]
load net WriteData[5] -attr @rip(#000000) store_Data[5] -pin dmem WD[5] -pin sh store_Data[5]
load net WriteData[6] -attr @rip(#000000) store_Data[6] -pin dmem WD[6] -pin sh store_Data[6]
load net WriteData[7] -attr @rip(#000000) store_Data[7] -pin dmem WD[7] -pin sh store_Data[7]
load net WriteData[8] -attr @rip(#000000) store_Data[8] -pin dmem WD[8] -pin sh store_Data[8]
load net WriteData[9] -attr @rip(#000000) store_Data[9] -pin dmem WD[9] -pin sh store_Data[9]
load net Zero -pin cu Zero -pin main_alu Zero
netloc Zero 1 15 1 4560 110n
load net aiupc -pin ALUSrcA_i S -pin cu aiupc
netloc aiupc 1 16 1 5000 290n
load net clk -pin PC_reg_reg[31:0] C -port clk -pin dmem clk -pin lh clk -pin rf clk -pin sh clk
netloc clk 1 0 13 NJ 450 NJ 450 NJ 450 NJ 450 1280 200 NJ 200 1800 180 2140 180 2390 60 NJ 60 NJ 60 NJ 60 3620J
load net rst -pin PC_reg_reg[31:0] CLR -port rst
netloc rst 1 0 5 NJ 470 NJ 470 NJ 470 NJ 470 1340J
load netBundle @ALUSrcA 32 ALUSrcA[31] ALUSrcA[30] ALUSrcA[29] ALUSrcA[28] ALUSrcA[27] ALUSrcA[26] ALUSrcA[25] ALUSrcA[24] ALUSrcA[23] ALUSrcA[22] ALUSrcA[21] ALUSrcA[20] ALUSrcA[19] ALUSrcA[18] ALUSrcA[17] ALUSrcA[16] ALUSrcA[15] ALUSrcA[14] ALUSrcA[13] ALUSrcA[12] ALUSrcA[11] ALUSrcA[10] ALUSrcA[9] ALUSrcA[8] ALUSrcA[7] ALUSrcA[6] ALUSrcA[5] ALUSrcA[4] ALUSrcA[3] ALUSrcA[2] ALUSrcA[1] ALUSrcA[0] -autobundled
netbloc @ALUSrcA 1 14 4 4240 450 NJ 450 5020J 400 5280
load netBundle @PCNext 32 PCNext[31] PCNext[30] PCNext[29] PCNext[28] PCNext[27] PCNext[26] PCNext[25] PCNext[24] PCNext[23] PCNext[22] PCNext[21] PCNext[20] PCNext[19] PCNext[18] PCNext[17] PCNext[16] PCNext[15] PCNext[14] PCNext[13] PCNext[12] PCNext[11] PCNext[10] PCNext[9] PCNext[8] PCNext[7] PCNext[6] PCNext[5] PCNext[4] PCNext[3] PCNext[2] PCNext[1] PCNext[0] -autobundled
netbloc @PCNext 1 4 1 N 370
load netBundle @PCPlus4 32 PCPlus4[31] PCPlus4[30] PCPlus4[29] PCPlus4[28] PCPlus4[27] PCPlus4[26] PCPlus4[25] PCPlus4[24] PCPlus4[23] PCPlus4[22] PCPlus4[21] PCPlus4[20] PCPlus4[19] PCPlus4[18] PCPlus4[17] PCPlus4[16] PCPlus4[15] PCPlus4[14] PCPlus4[13] PCPlus4[12] PCPlus4[11] PCPlus4[10] PCPlus4[9] PCPlus4[8] PCPlus4[7] PCPlus4[6] PCPlus4[5] PCPlus4[4] PCPlus4[3] PCPlus4[2] PCPlus4[1] PCPlus4[0] -autobundled
netbloc @PCPlus4 1 3 9 980 310 1320J 430 NJ 430 NJ 430 NJ 430 NJ 430 NJ 430 NJ 430 3320
load netBundle @PCTarget0 32 PCTarget0[31] PCTarget0[30] PCTarget0[29] PCTarget0[28] PCTarget0[27] PCTarget0[26] PCTarget0[25] PCTarget0[24] PCTarget0[23] PCTarget0[22] PCTarget0[21] PCTarget0[20] PCTarget0[19] PCTarget0[18] PCTarget0[17] PCTarget0[16] PCTarget0[15] PCTarget0[14] PCTarget0[13] PCTarget0[12] PCTarget0[11] PCTarget0[10] PCTarget0[9] PCTarget0[8] PCTarget0[7] PCTarget0[6] PCTarget0[5] PCTarget0[4] PCTarget0[3] PCTarget0[2] PCTarget0[1] PCTarget0[0] -autobundled
netbloc @PCTarget0 1 2 1 NJ 150
load netBundle @PCTarget0_i__0_n_ 32 PCTarget0_i__0_n_0 PCTarget0_i__0_n_1 PCTarget0_i__0_n_2 PCTarget0_i__0_n_3 PCTarget0_i__0_n_4 PCTarget0_i__0_n_5 PCTarget0_i__0_n_6 PCTarget0_i__0_n_7 PCTarget0_i__0_n_8 PCTarget0_i__0_n_9 PCTarget0_i__0_n_10 PCTarget0_i__0_n_11 PCTarget0_i__0_n_12 PCTarget0_i__0_n_13 PCTarget0_i__0_n_14 PCTarget0_i__0_n_15 PCTarget0_i__0_n_16 PCTarget0_i__0_n_17 PCTarget0_i__0_n_18 PCTarget0_i__0_n_19 PCTarget0_i__0_n_20 PCTarget0_i__0_n_21 PCTarget0_i__0_n_22 PCTarget0_i__0_n_23 PCTarget0_i__0_n_24 PCTarget0_i__0_n_25 PCTarget0_i__0_n_26 PCTarget0_i__0_n_27 PCTarget0_i__0_n_28 PCTarget0_i__0_n_29 PCTarget0_i__0_n_30 PCTarget0_i__0_n_31 -autobundled
netbloc @PCTarget0_i__0_n_ 1 2 1 650 170n
load netBundle @PCTarget 32 PCTarget[31] PCTarget[30] PCTarget[29] PCTarget[28] PCTarget[27] PCTarget[26] PCTarget[25] PCTarget[24] PCTarget[23] PCTarget[22] PCTarget[21] PCTarget[20] PCTarget[19] PCTarget[18] PCTarget[17] PCTarget[16] PCTarget[15] PCTarget[14] PCTarget[13] PCTarget[12] PCTarget[11] PCTarget[10] PCTarget[9] PCTarget[8] PCTarget[7] PCTarget[6] PCTarget[5] PCTarget[4] PCTarget[3] PCTarget[2] PCTarget[1] PCTarget[0] -autobundled
netbloc @PCTarget 1 3 1 1000 160n
load netBundle @Result0_i_n_ 32 Result0_i_n_0 Result0_i_n_1 Result0_i_n_2 Result0_i_n_3 Result0_i_n_4 Result0_i_n_5 Result0_i_n_6 Result0_i_n_7 Result0_i_n_8 Result0_i_n_9 Result0_i_n_10 Result0_i_n_11 Result0_i_n_12 Result0_i_n_13 Result0_i_n_14 Result0_i_n_15 Result0_i_n_16 Result0_i_n_17 Result0_i_n_18 Result0_i_n_19 Result0_i_n_20 Result0_i_n_21 Result0_i_n_22 Result0_i_n_23 Result0_i_n_24 Result0_i_n_25 Result0_i_n_26 Result0_i_n_27 Result0_i_n_28 Result0_i_n_29 Result0_i_n_30 Result0_i_n_31 -autobundled
netbloc @Result0_i_n_ 1 11 1 3340 130n
load netBundle @Result1_i_n_ 32 Result1_i_n_0 Result1_i_n_1 Result1_i_n_2 Result1_i_n_3 Result1_i_n_4 Result1_i_n_5 Result1_i_n_6 Result1_i_n_7 Result1_i_n_8 Result1_i_n_9 Result1_i_n_10 Result1_i_n_11 Result1_i_n_12 Result1_i_n_13 Result1_i_n_14 Result1_i_n_15 Result1_i_n_16 Result1_i_n_17 Result1_i_n_18 Result1_i_n_19 Result1_i_n_20 Result1_i_n_21 Result1_i_n_22 Result1_i_n_23 Result1_i_n_24 Result1_i_n_25 Result1_i_n_26 Result1_i_n_27 Result1_i_n_28 Result1_i_n_29 Result1_i_n_30 Result1_i_n_31 -autobundled
netbloc @Result1_i_n_ 1 10 1 2980 120n
load netBundle @Result 32 Result[31] Result[30] Result[29] Result[28] Result[27] Result[26] Result[25] Result[24] Result[23] Result[22] Result[21] Result[20] Result[19] Result[18] Result[17] Result[16] Result[15] Result[14] Result[13] Result[12] Result[11] Result[10] Result[9] Result[8] Result[7] Result[6] Result[5] Result[4] Result[3] Result[2] Result[1] Result[0] -autobundled
netbloc @Result 1 12 1 3600 120n
load netBundle @SrcB 32 SrcB[31] SrcB[30] SrcB[29] SrcB[28] SrcB[27] SrcB[26] SrcB[25] SrcB[24] SrcB[23] SrcB[22] SrcB[21] SrcB[20] SrcB[19] SrcB[18] SrcB[17] SrcB[16] SrcB[15] SrcB[14] SrcB[13] SrcB[12] SrcB[11] SrcB[10] SrcB[9] SrcB[8] SrcB[7] SrcB[6] SrcB[5] SrcB[4] SrcB[3] SrcB[2] SrcB[1] SrcB[0] -autobundled
netbloc @SrcB 1 14 1 N 130
load netBundle @ALUControl 4 ALUControl[3] ALUControl[2] ALUControl[1] ALUControl[0] -autobundled
netbloc @ALUControl 1 14 3 4240 30 NJ 30 5000
load netBundle @ImmSrc 3 ImmSrc[2] ImmSrc[1] ImmSrc[0] -autobundled
netbloc @ImmSrc 1 0 17 20 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 3960J 210 NJ 210 4580J 70 4900
load netBundle @ReadData 32 ReadData[31] ReadData[30] ReadData[29] ReadData[28] ReadData[27] ReadData[26] ReadData[25] ReadData[24] ReadData[23] ReadData[22] ReadData[21] ReadData[20] ReadData[19] ReadData[18] ReadData[17] ReadData[16] ReadData[15] ReadData[14] ReadData[13] ReadData[12] ReadData[11] ReadData[10] ReadData[9] ReadData[8] ReadData[7] ReadData[6] ReadData[5] ReadData[4] ReadData[3] ReadData[2] ReadData[1] ReadData[0] -autobundled
netbloc @ReadData 1 8 1 2410 100n
load netBundle @ImmExt 32 ImmExt[31] ImmExt[30] ImmExt[29] ImmExt[28] ImmExt[27] ImmExt[26] ImmExt[25] ImmExt[24] ImmExt[23] ImmExt[22] ImmExt[21] ImmExt[20] ImmExt[19] ImmExt[18] ImmExt[17] ImmExt[16] ImmExt[15] ImmExt[14] ImmExt[13] ImmExt[12] ImmExt[11] ImmExt[10] ImmExt[9] ImmExt[8] ImmExt[7] ImmExt[6] ImmExt[5] ImmExt[4] ImmExt[3] ImmExt[2] ImmExt[1] ImmExt[0] -autobundled
netbloc @ImmExt 1 1 13 310 220 670J 240 NJ 240 NJ 240 NJ 240 NJ 240 NJ 240 NJ 240 NJ 240 3040 220 NJ 220 NJ 220 3940
load netBundle @Instr 32 Instr[31] Instr[30] Instr[29] Instr[28] Instr[27] Instr[26] Instr[25] Instr[24] Instr[23] Instr[22] Instr[21] Instr[20] Instr[19] Instr[18] Instr[17] Instr[16] Instr[15] Instr[14] Instr[13] Instr[12] Instr[11] Instr[10] Instr[9] Instr[8] Instr[7] Instr[6] Instr[5] Instr[4] Instr[3] Instr[2] Instr[1] Instr[0] -autobundled
netbloc @Instr 1 0 16 40 240 NJ 240 690 220N 1020 220 NJ 220 NJ 220 1820 200 NJ 200 2410 220 NJ 220 3020 200N 3340J 200 3640 280 NJ 280 NJ 280 4600
load netBundle @Data 32 Data[31] Data[30] Data[29] Data[28] Data[27] Data[26] Data[25] Data[24] Data[23] Data[22] Data[21] Data[20] Data[19] Data[18] Data[17] Data[16] Data[15] Data[14] Data[13] Data[12] Data[11] Data[10] Data[9] Data[8] Data[7] Data[6] Data[5] Data[4] Data[3] Data[2] Data[1] Data[0] -autobundled
netbloc @Data 1 9 1 2700 110n
load netBundle @ALUResult 32 ALUResult[31] ALUResult[30] ALUResult[29] ALUResult[28] ALUResult[27] ALUResult[26] ALUResult[25] ALUResult[24] ALUResult[23] ALUResult[22] ALUResult[21] ALUResult[20] ALUResult[19] ALUResult[18] ALUResult[17] ALUResult[16] ALUResult[15] ALUResult[14] ALUResult[13] ALUResult[12] ALUResult[11] ALUResult[10] ALUResult[9] ALUResult[8] ALUResult[7] ALUResult[6] ALUResult[5] ALUResult[4] ALUResult[3] ALUResult[2] ALUResult[1] ALUResult[0] -autobundled
netbloc @ALUResult 1 1 15 310 40 NJ 40 NJ 40 NJ 40 NJ 40 NJ 40 2140 20 NJ 20 2720 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 4600
load netBundle @SrcA 32 SrcA[31] SrcA[30] SrcA[29] SrcA[28] SrcA[27] SrcA[26] SrcA[25] SrcA[24] SrcA[23] SrcA[22] SrcA[21] SrcA[20] SrcA[19] SrcA[18] SrcA[17] SrcA[16] SrcA[15] SrcA[14] SrcA[13] SrcA[12] SrcA[11] SrcA[10] SrcA[9] SrcA[8] SrcA[7] SrcA[6] SrcA[5] SrcA[4] SrcA[3] SrcA[2] SrcA[1] SrcA[0] -autobundled
netbloc @SrcA 1 13 4 3920 470 NJ 470 NJ 470 NJ
load netBundle @RD2 32 RD2[31] RD2[30] RD2[29] RD2[28] RD2[27] RD2[26] RD2[25] RD2[24] RD2[23] RD2[22] RD2[21] RD2[20] RD2[19] RD2[18] RD2[17] RD2[16] RD2[15] RD2[14] RD2[13] RD2[12] RD2[11] RD2[10] RD2[9] RD2[8] RD2[7] RD2[6] RD2[5] RD2[4] RD2[3] RD2[2] RD2[1] RD2[0] -autobundled
netbloc @RD2 1 6 8 1840 220 NJ 220 2430J 200 NJ 200 2980J 240 NJ 240 NJ 240 3900
load netBundle @WriteData 32 WriteData[31] WriteData[30] WriteData[29] WriteData[28] WriteData[27] WriteData[26] WriteData[25] WriteData[24] WriteData[23] WriteData[22] WriteData[21] WriteData[20] WriteData[19] WriteData[18] WriteData[17] WriteData[16] WriteData[15] WriteData[14] WriteData[13] WriteData[12] WriteData[11] WriteData[10] WriteData[9] WriteData[8] WriteData[7] WriteData[6] WriteData[5] WriteData[4] WriteData[3] WriteData[2] WriteData[1] WriteData[0] -autobundled
netbloc @WriteData 1 7 1 2140 100n
load netBundle @PC_reg 32 PC_reg[31] PC_reg[30] PC_reg[29] PC_reg[28] PC_reg[27] PC_reg[26] PC_reg[25] PC_reg[24] PC_reg[23] PC_reg[22] PC_reg[21] PC_reg[20] PC_reg[19] PC_reg[18] PC_reg[17] PC_reg[16] PC_reg[15] PC_reg[14] PC_reg[13] PC_reg[12] PC_reg[11] PC_reg[10] PC_reg[9] PC_reg[8] PC_reg[7] PC_reg[6] PC_reg[5] PC_reg[4] PC_reg[3] PC_reg[2] PC_reg[1] PC_reg[0] -autobundled
netbloc @PC_reg 1 1 16 330 360 670 280 NJ 280 NJ 280 1580 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 4980
levelinfo -pg 1 0 140 490 850 1150 1400 1660 1950 2250 2550 2850 3190 3470 3750 4090 4360 4720 5150 5300
pagesize -pg 1 -db -bbox -sgen -70 0 5300 530
show
zoom 0.453985
scrollpos 577 -178
#
# initialize ictrl to current module processor work:processor:NOFILE
ictrl init topinfo |
