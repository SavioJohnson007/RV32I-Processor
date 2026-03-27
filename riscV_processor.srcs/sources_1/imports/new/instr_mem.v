module instruction_mem(
    input  [31:0] A,    
    output [31:0] RD    
    );

    reg [7:0] mem [128:0];
         
    assign RD = { mem[A+3], mem[A + 2], mem[A + 1], mem[A]};

endmodule