module extend(
    input  [24:0] Instr,      
    input  [2:0]  ImmSrc,      
    output reg [31:0] ImmExt   
    );

    always @(*) begin
        case (ImmSrc)
            3'b000:   ImmExt = {{20{Instr[24]}}, Instr[24:13]};
            3'b001:   ImmExt = {{20{Instr[24]}}, Instr[24:18], Instr[4:0]};
            3'b010:   ImmExt = {{20{Instr[24]}}, Instr[0], Instr[23:18], Instr[4:1], 1'b0};
            3'b011:   ImmExt = {{12{Instr[24]}}, Instr[12:5], Instr[13], Instr[23:14], 1'b0};
            3'b100: ImmExt = {Instr[24:5], 12'b0};
            default: ImmExt = 32'b0;
        endcase
    end

endmodule