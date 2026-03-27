module data_mem (
    input clk,
    input WE, 
    input [31:0] A,      
    input [31:0] WD,  
    output [31:0] RD      
);

    reg [7:0] mem [64:0];

    always @(posedge clk) begin
        if (WE) begin
            mem[A] <= WD[7:0];
            mem[A + 1] <= WD[15:8];
            mem[A + 2] <= WD[23:16];
            mem[A + 3] <= WD[31:24];
        end
    end
    

    assign RD = {mem[A + 3], mem[A + 2], mem[A + 1], mem[A]};

endmodule

module load_handler(
    input clk,
    input [31:0] ReadData,
    input [2:0] funct3,
    output reg [31:0] Data
);

    always @(*) begin 
        case(funct3)
            3'b000: Data = {{24{ReadData[7]}},ReadData[7:0]};
            3'b010: Data = ReadData;
            3'b100: Data = {{24'b0},ReadData[7:0]};
            3'b001: Data = {{16{ReadData[15]}},ReadData[15:0]};
            3'b101: Data = {{16'b0},ReadData[15:0]};
            default: Data = 32'b0;
            endcase
         end
endmodule

module store_handler(
    input clk,
    input [31:0] Data_in,
    input [2:0] funct3,
    output reg [31:0] store_Data
);

    always @(*) begin
        case(funct3)
            3'b000 : store_Data = {{24{Data_in[7]}}, Data_in[7:0]};
            3'b001 : store_Data = {{16{Data_in[15]}}, Data_in[15:0]};
            3'b010 : store_Data = Data_in;
            
            default : store_Data = 32'b0;
            endcase
        end
endmodule