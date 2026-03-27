module alu(
    input [31:0] SrcA, SrcB,
    input [3:0]  ALUControl,
    output reg [31:0] ALUResult,
    output Zero
    );

    always @(*) begin
        case (ALUControl)
            4'b0000: ALUResult = SrcA + SrcB;          
            4'b0001: ALUResult = SrcA - SrcB;          
            4'b0010: ALUResult = SrcA & SrcB;          
            4'b0011: ALUResult = SrcA | SrcB;          
            4'b0101: ALUResult = ($signed(SrcA) < $signed(SrcB)) ? 32'b1 : 32'b0;
            4'b0100: ALUResult = $signed(SrcA) >>> SrcB[4:0];
            4'b0110: ALUResult = SrcA << SrcB[4:0];
            4'b0111: ALUResult = SrcA >> SrcB[4:0];
            4'b1000: ALUResult = ($unsigned(SrcA) < $unsigned(SrcB)) ? 32'b1 : 32'b0;
            
            default: ALUResult = 32'b0;
        endcase
    end

    assign Zero = (ALUResult == 32'b0);

endmodule