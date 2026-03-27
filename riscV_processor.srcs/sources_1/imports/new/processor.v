module processor(
    input clk,
    input rst
    );

    wire [31:0] PC, PCNext, PCPlus4, PCTarget;
    wire [31:0] Instr;
    wire [31:0] SrcA, SrcB, ALUResult, WriteData, ReadData, Result, ImmExt, Data;
    wire [31:0] RD2;
    wire [3:0]  ALUControl;
    wire [2:0]  ImmSrc;
    wire RegWrite, ALUSrc, MemWrite, ResultSrc, PCSrc, Zero, Jump, aiupc;

    reg [31:0] PC_reg;
    always @(posedge clk or posedge rst) begin
        if (rst) PC_reg <= 32'b0;
        else PC_reg <= PCNext;
    end
    assign PC = PC_reg;

    assign PCPlus4 = PC + 32'd4;
    assign PCTarget = (Instr[6:0] == 7'b1100111) ? (ALUResult & 32'hFFFFFFFE) : (PC + ImmExt);
    assign PCNext = PCSrc ? PCTarget : PCPlus4;

    instruction_mem imem (
        .A(PC), 
        .RD(Instr)
    );

    control_unit cu (
        .op(Instr[6:0]), 
        .funct3(Instr[14:12]), 
        .funct7_5(Instr[30]), 
        .Zero(Zero),
        .ALUResult(ALUResult),
        .RegWrite(RegWrite), 
        .ImmSrc(ImmSrc), 
        .ALUSrc(ALUSrc), 
        .MemWrite(MemWrite), 
        .ResultSrc(ResultSrc), 
        .ALUControl(ALUControl), 
        .PCSrc(PCSrc),
        .Jump(Jump),
        .aiupc(aiupc)
    );

    reg_file rf (
        .clk(clk), 
        .WE3(RegWrite), 
        .A1(Instr[19:15]), 
        .A2(Instr[24:20]), 
        .A3(Instr[11:7]), 
        .WD3(Result), 
        .RD1(SrcA), 
        .RD2(RD2)
    );

    extend ext (
        .Instr(Instr[31:7]), 
        .ImmSrc(ImmSrc), 
        .ImmExt(ImmExt)
    );

    assign SrcB = ALUSrc ? ImmExt : RD2;

    wire [31:0] ALUSrcA;

    assign ALUSrcA = aiupc ? PC : SrcA;
    
    alu main_alu (
        .SrcA(ALUSrcA),
        .SrcB(SrcB), 
        .ALUControl(ALUControl), 
        .ALUResult(ALUResult), 
        .Zero(Zero)
    );

    data_mem dmem (
        .clk(clk),
        .WE(MemWrite), 
        .A(ALUResult), 
        .WD(WriteData), 
        .RD(ReadData)
    );
        
    load_handler lh (
        .clk(clk),
        .funct3(Instr[14:12]),
        .ReadData(ReadData),
        .Data(Data)
    );
    store_handler sh(
        .clk(clk),
        .funct3(Instr[14:12]),
        .Data_in(RD2),
        .store_Data(WriteData)
    );
    
    assign Result = Jump ? PCPlus4 : (Instr[6:0] == 7'b0110111) ? ImmExt : (ResultSrc ? Data : ALUResult);

endmodule