module control_unit(
    input [6:0] op,
    input [2:0] funct3,
    input funct7_5,
    input Zero,
    input [31:0] ALUResult,
    output RegWrite,
    output [2:0] ImmSrc,
    output ALUSrc,
    output Jump,
    output aiupc,
    output MemWrite,
    output ResultSrc,
    output [3:0] ALUControl,
    output PCSrc
    );

    wire [1:0] ALUOp;
    wire Branch;
    reg  TakeBranch;
    

    main_decoder md (
        .op(op), .RegWrite(RegWrite), .ImmSrc(ImmSrc), 
        .ALUSrc(ALUSrc), .MemWrite(MemWrite), .ResultSrc(ResultSrc), 
        .Branch(Branch), .ALUOp(ALUOp), .Jump(Jump), .aiupc(aiupc)
    );

    alu_decoder ad (
        .op5(op[5]), .funct3(funct3), .funct7_5(funct7_5), 
        .ALUOp(ALUOp), .ALUControl(ALUControl)
    );
    always @(*) begin
        if (Branch) begin
            case (funct3)
                3'b000: TakeBranch = Zero;
                3'b001: TakeBranch = ~Zero;
                3'b100: TakeBranch = ALUResult[0];
                3'b101: TakeBranch = ~ALUResult[0];
                3'b110: TakeBranch = ALUResult[0];
                3'b111: TakeBranch = ~ALUResult[0];
                default: TakeBranch = 1'b0;
            endcase
         end
         else TakeBranch = 1'b0;
    end
    assign PCSrc = Jump | (Branch & TakeBranch);    

endmodule

module main_decoder(
    input [6:0] op,
    output RegWrite,
    output [2:0] ImmSrc,
    output ALUSrc,
    output MemWrite,
    output ResultSrc,
    output Branch,
    output Jump,
    output [1:0] ALUOp,
    output aiupc
    );

    reg [11:0] controls; 
    assign {RegWrite, ImmSrc, ALUSrc, MemWrite, ResultSrc, Branch, ALUOp, Jump, aiupc} = controls;

    always @(*) begin
        case (op)
            7'b0000011: controls = 12'b1_000_1_0_1_0_00_0_0; //load
            7'b0100011: controls = 12'b0_001_1_1_0_0_00_0_0; //S
            7'b0110011: controls = 12'b1_xxx_0_0_0_0_10_0_0; //R
            7'b1100011: controls = 12'b0_010_0_0_0_1_01_0_0; //B
            7'b0010011: controls = 12'b1_000_1_0_0_0_10_0_0; //I
            7'b1101111: controls = 12'b1_011_0_0_0_0_00_1_0; //J
            7'b1100111: controls = 12'b1_000_1_0_0_0_00_1_0; //jalr
            7'b0110111: controls = 12'b1_100_0_0_0_0_xx_0_0; //U-lui
            7'b0010111: controls = 12'b1_100_1_0_0_0_00_0_1; //U-auipc
            
            default:    controls = 12'b0_000_0_0_0_0_00_0; 
        endcase
    end
endmodule

module alu_decoder(
    input op5,        
    input [2:0] funct3,
    input funct7_5,   
    input [1:0] ALUOp,
    output reg [3:0] ALUControl
    );

    always @(*) begin
        case (ALUOp)
            2'b00: ALUControl = 4'b0000; 
            2'b01: begin
                case (funct3)
                    3'b000, 3'b001: ALUControl = 4'b0001;
                    3'b100, 3'b101: ALUControl = 4'b0101;
                    3'b110, 3'b111: ALUControl = 4'b1000;
                    default: ALUControl = 4'b0000;
                endcase
            end 
            2'b10: begin
                case (funct3)
                    3'b000: begin
                        if ({op5, funct7_5} == 2'b11) 
                            ALUControl = 4'b0001;
                        else                          
                            ALUControl = 4'b0000;
                    end
                    3'b010: ALUControl = 4'b0101;
                    3'b011: ALUControl = 4'b1000; 
                    3'b110: ALUControl = 4'b0011; 
                    3'b111: ALUControl = 4'b0010;
                    3'b100: ALUControl = 4'b0101;
                    3'b101: begin
                        if (funct7_5) 
                            ALUControl = 4'b0100;
                        else          
                            ALUControl = 4'b0111;
                    end
                    3'b001: ALUControl = 4'b0110;
                     
                    default: ALUControl = 4'b0000;
                endcase
            end
            default: ALUControl = 4'b0000;
        endcase
    end
endmodule