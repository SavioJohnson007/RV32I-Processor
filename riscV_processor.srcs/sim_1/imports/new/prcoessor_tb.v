module testbench();
    reg clk;
    reg rst;

    processor dut (
        .clk(clk),
        .rst(rst)
    );

    always #5 clk = ~clk;

    integer i;
    initial begin
        for (i = 1; i < 32; i = i+1) begin
            dut.rf.register[i] = $urandom_range(0, 32);
        end
        dut.rf.register[0] = 32'b0;
        
        for(i = 0; i < 64; i = i+1) begin
            dut.dmem.mem[i] = 32'b0;
        end
    end
    
    initial begin
        
        //lw x6, -4(x9)  32'hFFC4A303
        dut.imem.mem[0]  = 8'h03;
        dut.imem.mem[1]  = 8'hA3;
        dut.imem.mem[2]  = 8'hC4;
        dut.imem.mem[3]  = 8'hFF;
        
        //sw x6, 8(x9)  32'h0064A423
        dut.imem.mem[4]  = 8'h23;
        dut.imem.mem[5]  = 8'hA4;
        dut.imem.mem[6]  = 8'h64;
        dut.imem.mem[7]  = 8'h00;
        
        //or x4, x5, x6  32'h0062E233
        dut.imem.mem[8]  = 8'h33;
        dut.imem.mem[9]  = 8'hE2;
        dut.imem.mem[10] = 8'h62;
        dut.imem.mem[11] = 8'h00;

        //sra x10, x11, x12  32'h40C5D533
        dut.imem.mem[12] = 8'h33;
        dut.imem.mem[13] = 8'hD5;
        dut.imem.mem[14] = 8'hC5;
        dut.imem.mem[15] = 8'h40;
                
        //beq x4, x4, -16  32'hFE4208E3; beq x4, x15, -16 32'hFEF208E3
        dut.imem.mem[16] = 8'hE3;
        dut.imem.mem[17] = 8'h08;
        dut.imem.mem[18] = 8'h42;
        dut.imem.mem[19] = 8'hFE;
        
        //blt x8, x9, -20  32'hFE9446E3
        dut.imem.mem[20] = 8'hE3;
        dut.imem.mem[21] = 8'h46;
        dut.imem.mem[22] = 8'h94;
        dut.imem.mem[23] = 8'hFE;
        
        //lb x13, -5(x9) 32'hFFB48683
        dut.imem.mem[24] = 8'h83;
        dut.imem.mem[25] = 8'h86;
        dut.imem.mem[26] = 8'hB4;
        dut.imem.mem[27] = 8'hFF;
        
        //lbu x17, -3(x20) 32'hFFDA4883
        dut.imem.mem[28] = 8'h83;
        dut.imem.mem[29] = 8'h48;
        dut.imem.mem[30] = 8'hDA;
        dut.imem.mem[31] = 8'hFF;
        
        //lh x13, -5(x9) 32'hFFB49683
        dut.imem.mem[32] = 8'h83;
        dut.imem.mem[33] = 8'h96;
        dut.imem.mem[34] = 8'hB4;
        dut.imem.mem[35] = 8'hFF;
        
        //lhu x17, -3(x20) 32'hFFDA5883
        dut.imem.mem[36] = 8'h83;
        dut.imem.mem[37] = 8'h58;
        dut.imem.mem[38] = 8'hDA;
        dut.imem.mem[39] = 8'hFF;
        
        //srl x25, x11, x12  32'h00C5DCB3
        dut.imem.mem[40] = 8'hB3;
        dut.imem.mem[41] = 8'hDC;
        dut.imem.mem[42] = 8'hC5;
        dut.imem.mem[43] = 8'h00;
        
        //sll x26, x11, x12 32'h00C59D33
        dut.imem.mem[44] = 8'h33;
        dut.imem.mem[45] = 8'h9D;
        dut.imem.mem[46] = 8'hC5;
        dut.imem.mem[47] = 8'h00;
        
        //sltu x22, x9, x8 32'h0084BB33
        dut.imem.mem[48] = 8'h33;
        dut.imem.mem[49] = 8'hBB;
        dut.imem.mem[50] = 8'h84;
        dut.imem.mem[51] = 8'h00;
        
        //addi x24, x9, -4 32'hFFC48C13
        dut.imem.mem[52] = 8'h13;
        dut.imem.mem[53] = 8'h8C;
        dut.imem.mem[54] = 8'hC4;
        dut.imem.mem[55] = 8'hFF;
        
        //slli x29, x11,3 32'h00359E93
        dut.imem.mem[56] = 8'h93;
        dut.imem.mem[57] = 8'h9E;
        dut.imem.mem[58] = 8'h35;
        dut.imem.mem[59] = 8'h00;
        
        
        dut.dmem.mem[4] = 8'h00;
        dut.dmem.mem[5] = 8'hF2;
        dut.dmem.mem[6] = 8'h10;
        dut.dmem.mem[7] = 8'h00;
        
        dut.dmem.mem[8] = 8'h00;
        dut.dmem.mem[9] = 8'h20;
        dut.dmem.mem[10] = 8'h00;
        dut.dmem.mem[11] = 8'h00;
        
        dut.dmem.mem[16] = 8'hF2;
        dut.dmem.mem[17] = 8'h15;
        dut.dmem.mem[18] = 8'h30;
        dut.dmem.mem[19] = 8'h25;
        dut.dmem.mem[20] = 8'hF0;
                
        dut.rf.register[5] = 32'hAAAA5555;             
        dut.rf.register[4] = 32'h0;           
        dut.rf.register[11] = 32'h80F01000;
        dut.rf.register[12] = 32'h00000002;
        dut.rf.register[15] = 32'h12345678;
        dut.rf.register[8] = 32'd15;
        dut.rf.register[9] = 32'd10;
        dut.rf.register[20] = 32'd19;


        
        clk = 0;
        rst = 1;
        #10 rst = 0; 

        #200;
        
        
        $finish;
    end
endmodule