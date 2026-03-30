module reg_file(
    input clk,
    input WE3,       
    input [4:0]  A1, A2, A3, 
    input [31:0] WD3,        
    output [31:0] RD1, RD2    
    );

    reg [31:0] register [31:0];

    integer i;
    initial begin
        for (i = 0; i < 32; i = i + 1) begin
            register[i] = 32'b0;
        end
    end
    
    always @(posedge clk) begin
        if (WE3) begin
            if (A3 != 5'b00000) begin
                register[A3] <= WD3;
            end
        end
    end

    assign RD1 = (A1 != 5'b00000) ? register[A1] : 32'b0;
    assign RD2 = (A2 != 5'b00000) ? register[A2] : 32'b0;

endmodule