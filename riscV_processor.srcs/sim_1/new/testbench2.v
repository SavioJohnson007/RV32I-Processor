`timescale 1ns / 1ps
module testbench;

reg clk;
reg rst;

processor dut (.clk(clk), .rst(rst));

always #5 clk = ~clk;

integer errors = 0;

task check;
input [127:0] name;
input [31:0] actual;
input [31:0] expected;

reg [31:0] diff;
begin
    diff = actual ^ expected;

    if(actual === expected) begin
        $display("[PASS] %-8s | Value = 0x%08h (%0d)", 
                  name, actual, actual);
    end
    else begin
        $display("[FAIL] %-8s", name);
        $display("        Expected : 0x%08h (%0d)", expected, expected);
        $display("        Got      : 0x%08h (%0d)", actual, actual);
        $display("        XOR Diff : 0x%08h", diff);

        // Bit-level mismatch reporting
        $write("        Mismatch bits: ");
        for (integer i = 31; i >= 0; i = i - 1) begin
            if (diff[i]) $write("%0d ", i);
        end
        $display("");

        // Context dump
        $display("        --- CONTEXT ---");
        $display("        PC        : 0x%08h", dut.PC);
        $display("        Instr     : 0x%08h", dut.Instr);
        $display("        ALUResult : 0x%08h", dut.ALUResult);
        $display("        SrcA      : 0x%08h", dut.SrcA);
        $display("        SrcB      : 0x%08h", dut.SrcB);
        $display("        RD2       : 0x%08h", dut.RD2);
        $display("        ImmExt    : 0x%08h", dut.ImmExt);
        $display("        Result    : 0x%08h", dut.Result);
        $display("        MemWrite  : %b", dut.MemWrite);
        $display("        RegWrite  : %b", dut.RegWrite);
        $display("        ALUCtrl   : %b", dut.ALUControl);

        errors = errors + 1;
    end
end
endtask

initial begin

clk=0; rst=1; 
#10
rst=0;


dut.rf.register[1]=5;
dut.rf.register[2]=10;
dut.rf.register[3]=20;
dut.rf.register[4]=7;
dut.rf.register[5]=32'hF0;
dut.rf.register[6]=32'h0F;
dut.rf.register[7]=-1;
dut.rf.register[8]=1;
dut.rf.register[9]=3;
dut.rf.register[10]=32'h80000000;

dut.dmem.mem[0]=8'hAA;
dut.dmem.mem[4]=8'h78;
dut.dmem.mem[5]=8'h56;
dut.dmem.mem[6]=8'h34;
dut.dmem.mem[7]=8'h12;
dut.dmem.mem[8]=8'h34;
dut.dmem.mem[9]=8'h56;
dut.dmem.mem[10]=8'h78;
dut.dmem.mem[20]=8'h34;
dut.dmem.mem[21]=8'h12;

// R-type

// add x7,x1,x2  -> 0x002083B3
dut.imem.mem[0]=8'hB3;  dut.imem.mem[1]=8'h83;
dut.imem.mem[2]=8'h20;  dut.imem.mem[3]=8'h00;

// sub x12,x3,x4 -> 0x40418633
dut.imem.mem[4]=8'h33;  dut.imem.mem[5]=8'h86;
dut.imem.mem[6]=8'h41;  dut.imem.mem[7]=8'h40;

// and x13,x5,x6 -> 0x0062F6B3
dut.imem.mem[8]=8'hB3;  dut.imem.mem[9]=8'hF6;
dut.imem.mem[10]=8'h62; dut.imem.mem[11]=8'h00;

// or x14,x5,x6 -> 0x0062E733
dut.imem.mem[12]=8'h33; dut.imem.mem[13]=8'hE7;
dut.imem.mem[14]=8'h62; dut.imem.mem[15]=8'h00;

// slt x15,x8,x9 -> 0x00942833
dut.imem.mem[16]=8'hB3; dut.imem.mem[17]=8'h27;
dut.imem.mem[18]=8'h94; dut.imem.mem[19]=8'h00;

// sltu x16,x1,x2 -> 0x002138B3
dut.imem.mem[20]=8'h33; dut.imem.mem[21]=8'hB8;
dut.imem.mem[22]=8'h20; dut.imem.mem[23]=8'h00;

// sll x17,x3,x4 -> 0x004199B3
dut.imem.mem[24]=8'hB3; dut.imem.mem[25]=8'h98;
dut.imem.mem[26]=8'h41; dut.imem.mem[27]=8'h00;

// srl x18,x10,x8 -> 0x008A5933
dut.imem.mem[28]=8'h33; dut.imem.mem[29]=8'h59;
dut.imem.mem[30]=8'h85; dut.imem.mem[31]=8'h00;

// sra x19,x10,x8 -> 0x408A59B3
dut.imem.mem[32]=8'hB3; dut.imem.mem[33]=8'h59;
dut.imem.mem[34]=8'h85; dut.imem.mem[35]=8'h40;

// I-TYPE

// addi x20,x1,10 -> 0x00A0A013
dut.imem.mem[36]=8'h13; dut.imem.mem[37]=8'h8A;
dut.imem.mem[38]=8'hA0; dut.imem.mem[39]=8'h00;

// slti x21,x1,10 -> 0x00A0A293
dut.imem.mem[40]=8'h93; dut.imem.mem[41]=8'hAA;
dut.imem.mem[42]=8'hA0; dut.imem.mem[43]=8'h00;

// sltiu x22,x1,10 -> 0x00A0B313
dut.imem.mem[44]=8'h13; dut.imem.mem[45]=8'hBB;
dut.imem.mem[46]=8'hA0; dut.imem.mem[47]=8'h00;

// LOAD / STORE

// lw x23,4(x0) 
dut.imem.mem[48]=8'h83; dut.imem.mem[49]=8'h2B;
dut.imem.mem[50]=8'h40; dut.imem.mem[51]=8'h00;

// lb x27,0(x0)  
dut.imem.mem[52]=8'h83; dut.imem.mem[53]=8'h0D;
dut.imem.mem[54]=8'h00; dut.imem.mem[55]=8'h00;

// lh x28,7(x0) 
dut.imem.mem[56]=8'h03; dut.imem.mem[57]=8'h1E;
dut.imem.mem[58]=8'h70; dut.imem.mem[59]=8'h00;

// sw x1,8(x0)
dut.imem.mem[60]=8'h23; dut.imem.mem[61]=8'h24;
dut.imem.mem[62]=8'h10; dut.imem.mem[63]=8'h00;

// LUI

// lui x24,0x00123 -> 0x00123C37
dut.imem.mem[64]=8'h37; dut.imem.mem[65]=8'h3C;
dut.imem.mem[66]=8'h12; dut.imem.mem[67]=8'h00;

// slli x29,x5,5 
dut.imem.mem[68]=8'h93; dut.imem.mem[69]=8'h9E;
dut.imem.mem[70]=8'h52; dut.imem.mem[71]=8'h00;

// srli x30,x5,5 
dut.imem.mem[72]=8'h13; dut.imem.mem[73]=8'hDF;
dut.imem.mem[74]=8'h52; dut.imem.mem[75]=8'h00;

// srai x31,x5,5 
dut.imem.mem[76]=8'h93; dut.imem.mem[77]=8'hDF;
dut.imem.mem[78]=8'h52; dut.imem.mem[79]=8'h40;

// sb x1,24(x0)
dut.imem.mem[80]=8'h23; dut.imem.mem[81]=8'h0C;
dut.imem.mem[82]=8'h10; dut.imem.mem[83]=8'h00;

//sh x1,28(x0)
dut.imem.mem[84]=8'h23; dut.imem.mem[85]=8'h1E;
dut.imem.mem[86]=8'h10; dut.imem.mem[87]=8'h00;

#400;


check("ADD", dut.rf.register[7], 15);
check("SUB", dut.rf.register[12], 13);
check("AND", dut.rf.register[13], 0);
check("OR", dut.rf.register[14], 32'hFF);
check("SLT", dut.rf.register[15], 1);
check("SLTU", dut.rf.register[16], 1);
check("SLL", dut.rf.register[17], 2560);
check("SRL", dut.rf.register[18], 32'h40000000);
check("SRA", dut.rf.register[19], 32'hC0000000);
check("ADDI", dut.rf.register[20], 15);
check("SLTI", dut.rf.register[21], 1);
check("SLTIU", dut.rf.register[22], 1);
check("SLLI", dut.rf.register[29], 32'h00001E00);
check("SRLI", dut.rf.register[30], 32'h00000007);
check("SRAI", dut.rf.register[31], 32'h00000007);
check("LW", dut.rf.register[23], 32'h12345678);
check("LB", dut.rf.register[27], 32'hFFFFFFAA);
check("LH", dut.rf.register[28], 32'h00003412);
check("SW", {dut.dmem.mem[11],dut.dmem.mem[10],dut.dmem.mem[9],dut.dmem.mem[8]}, 5);
check("SB", {dut.dmem.mem[27],dut.dmem.mem[26],dut.dmem.mem[25],dut.dmem.mem[24]}, 5);
check("SH", {dut.dmem.mem[31],dut.dmem.mem[30],dut.dmem.mem[29],dut.dmem.mem[28]}, 5);
check("LUI", dut.rf.register[24], 32'h00123000);

if(errors==0)
    $display("\nALL TESTS PASSED");
else
    $display("\nTOTAL FAILURES=%0d",errors);

$finish;
end

endmodule