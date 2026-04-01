`timescale 1ns/1ps

module tb_processor;

    reg clk;
    reg rst;

    processor dut (
        .clk(clk),
        .rst(rst)
    );

    always #5 clk = ~clk;

    reg [31:0] instr_count;
    reg [31:0] prev_PC;
    reg [31:0] curr_instr;

    initial begin
        clk = 0;
        rst = 1;
        instr_count = 0;

        #12 rst = 0;

        // USER WILL ADD STIMULUS
        //////////////////////////////////////////////////
// SOURCE REGISTER SETUP (Never used as rd)
//////////////////////////////////////////////////
dut.rf.register[1]=5;
dut.rf.register[2]=10;
dut.rf.register[3]=20;
dut.rf.register[4]=7;
dut.rf.register[5]=32'hF0;
dut.rf.register[6]=32'h0F;
//dut.rf.register[7]=-1;
dut.rf.register[8]=1;
dut.rf.register[9]=3;
dut.rf.register[10]=32'h80000000;

//////////////////////////////////////////////////
// DATA MEMORY
//////////////////////////////////////////////////
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


// ======================================================
// R-TYPE
// ======================================================

// add x7,x1,x2  -> 0x002083B3
dut.imem.mem[0]=8'hB3;  dut.imem.mem[1]=8'h83;
dut.imem.mem[2]=8'h20;  dut.imem.mem[3]=8'h00;

// x12 = x3 - x4
// sub x12,x3,x4 -> 0x40418633
dut.imem.mem[4]=8'h33;  dut.imem.mem[5]=8'h86;
dut.imem.mem[6]=8'h41;  dut.imem.mem[7]=8'h40;

// x13 = x5 & x6
// and x13,x5,x6 -> 0x0062F6B3
dut.imem.mem[8]=8'hB3;  dut.imem.mem[9]=8'hF6;
dut.imem.mem[10]=8'h62; dut.imem.mem[11]=8'h00;

// x14 = x5 | x6
// or x14,x5,x6 -> 0x0062E733
dut.imem.mem[12]=8'h33; dut.imem.mem[13]=8'hE7;
dut.imem.mem[14]=8'h62; dut.imem.mem[15]=8'h00;

// x15 = (x8 < x9)
// slt x15,x8,x9 -> 0x00942833
dut.imem.mem[16]=8'hB3; dut.imem.mem[17]=8'h27;
dut.imem.mem[18]=8'h94; dut.imem.mem[19]=8'h00;

// x16 = (x1 < x2) unsigned
// sltu x16,x1,x2 -> 0x002138B3
dut.imem.mem[20]=8'h33; dut.imem.mem[21]=8'hB8;
dut.imem.mem[22]=8'h20; dut.imem.mem[23]=8'h00;

// x17 = x3 << x4
// sll x17,x3,x4 -> 0x004199B3
dut.imem.mem[24]=8'hB3; dut.imem.mem[25]=8'h98;
dut.imem.mem[26]=8'h41; dut.imem.mem[27]=8'h00;

// x18 = x10 >> x8 (logical)
// srl x18,x10,x8 -> 0x008A5933
dut.imem.mem[28]=8'h33; dut.imem.mem[29]=8'h59;
dut.imem.mem[30]=8'h85; dut.imem.mem[31]=8'h00;

// x19 = x10 >>> x8
// sra x19,x10,x8 -> 0x408A59B3
dut.imem.mem[32]=8'hB3; dut.imem.mem[33]=8'h59;
dut.imem.mem[34]=8'h85; dut.imem.mem[35]=8'h40;


// ======================================================
// I-TYPE
// ======================================================

// x20 = x1 + 10
// addi x20,x1,10 -> 0x00A0A013
dut.imem.mem[36]=8'h13; dut.imem.mem[37]=8'h8A;
dut.imem.mem[38]=8'hA0; dut.imem.mem[39]=8'h00;

// x21 = (x1 < 10)
// slti x21,x1,10 -> 0x00A0A293
dut.imem.mem[40]=8'h93; dut.imem.mem[41]=8'hAA;
dut.imem.mem[42]=8'hA0; dut.imem.mem[43]=8'h00;

// x22 = (x1 < 10) unsigned
// sltiu x22,x1,10 -> 0x00A0B313
dut.imem.mem[44]=8'h13; dut.imem.mem[45]=8'hBB;
dut.imem.mem[46]=8'hA0; dut.imem.mem[47]=8'h00;


// ======================================================
// LOAD / STORE
// ======================================================

// x23 = lw 4(x0)
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
// 0x00102423
dut.imem.mem[60]=8'h23; dut.imem.mem[61]=8'h24;
dut.imem.mem[62]=8'h10; dut.imem.mem[63]=8'h00;

// ======================================================
// LUI
// ======================================================

// x24 = 0x00123000
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
$finish;

    end

    //-----------------------------------------
    // INSTRUCTION-LEVEL MONITOR
    //-----------------------------------------
    always @(posedge clk) begin

        if (rst) begin
            prev_PC <= 0;
        end
        else begin

            // Detect valid instruction execution
            if (dut.PC !== prev_PC) begin
                instr_count <= instr_count + 1;
                curr_instr = dut.Instr;

                $display("\n================ INSTRUCTION %0d ================", instr_count);
                $display("PC        : 0x%08h", dut.PC);
                $display("Instr     : 0x%08h", curr_instr);

                decode_and_print(curr_instr);

                // Checks
                check_pc();
                check_register_write();
                check_memory_write();
                check_load_behavior();
                check_alu();

                $display("================================================\n");
            end

            prev_PC <= dut.PC;
        end
    end

    //-----------------------------------------
    // INSTRUCTION DECODE (for readability)
    //-----------------------------------------
    task decode_and_print(input [31:0] instr);
        reg [6:0] opcode;
        begin
            opcode = instr[6:0];

            case (opcode)
                7'b0110011: $display("[TYPE] R-TYPE");
                7'b0010011: $display("[TYPE] I-TYPE (ALU)");
                7'b0000011: $display("[TYPE] LOAD");
                7'b0100011: $display("[TYPE] STORE");
                7'b1100011: $display("[TYPE] BRANCH");
                7'b1101111: $display("[TYPE] JAL");
                7'b1100111: $display("[TYPE] JALR");
                7'b0110111: $display("[TYPE] LUI");
                7'b0010111: $display("[TYPE] AUIPC");
                default:    $display("[TYPE] UNKNOWN");
            endcase
        end
    endtask

    //-----------------------------------------
    // PC CHECK
    //-----------------------------------------
    task check_pc;
    begin
        if (dut.PCSrc == 0) begin
            if (dut.PC !== prev_PC + 4) begin
                $error("[PC ERROR] Expected PC+4. Prev=0x%08h Curr=0x%08h",
                        prev_PC, dut.PC);
            end
            else
                $display("[PC OK]");
        end
        else begin
            $display("[PC OK - CONTROL FLOW] Jump/Branch to 0x%08h", dut.PC);
        end
    end
    endtask

    //-----------------------------------------
    // REGISTER WRITE CHECK
    //-----------------------------------------
    task check_register_write;
    begin
        if (dut.RegWrite) begin
            if (dut.Instr[11:7] == 0)
                $error("[REG ERROR] Write to x0!");
            else
                $display("[REG WRITE] x%0d <= 0x%08h",
                        dut.Instr[11:7], dut.Result);
        end
    end
    endtask

    //-----------------------------------------
    // MEMORY WRITE CHECK
    //-----------------------------------------
    task check_memory_write;
    begin
        if (dut.MemWrite) begin
            $display("[STORE] Addr=0x%08h Data=0x%08h",
                     dut.ALUResult, dut.WriteData);
        end
    end
    endtask

    //-----------------------------------------
    // LOAD CHECK
    //-----------------------------------------
    task check_load_behavior;
    begin
        if (dut.ResultSrc && !dut.MemWrite) begin
            $display("[LOAD] Raw=0x%08h -> Final=0x%08h",
                     dut.ReadData, dut.Data);

            if (dut.Data === 32'bx)
                $error("[LOAD ERROR] Undefined data");
        end
    end
    endtask

    //-----------------------------------------
    // ALU CHECK
    //-----------------------------------------
    task check_alu;
        reg [31:0] expected;
    begin
        case (dut.ALUControl)
            4'b0000: expected = dut.ALUSrcA + dut.SrcB;
            4'b0001: expected = dut.ALUSrcA - dut.SrcB;
            4'b0010: expected = dut.ALUSrcA & dut.SrcB;
            4'b0011: expected = dut.ALUSrcA | dut.SrcB;
            4'b0101: expected = ($signed(dut.ALUSrcA) < $signed(dut.SrcB)) ? 1 : 0;
            4'b1000: expected = ($unsigned(dut.ALUSrcA) < $unsigned(dut.SrcB)) ? 1 : 0;
            4'b0110: expected = dut.ALUSrcA << dut.SrcB[4:0];
            4'b0111: expected = dut.ALUSrcA >> dut.SrcB[4:0];
            4'b0100: expected = $signed(dut.ALUSrcA) >>> dut.SrcB[4:0];
            default: expected = 32'hDEADBEEF;
        endcase

        if (expected !== dut.ALUResult)
            $error("[ALU ERROR] Expected=0x%08h Got=0x%08h", expected, dut.ALUResult);
        else
            $display("[ALU OK]");
    end
    endtask

endmodule