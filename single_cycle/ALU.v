`timescale 1ns / 1ps

`include "param.v"

module ALU (
    input wire [2:0] op,
    input wire [31:0] A,
    input wire [31:0] B,
    output reg [31:0] C,
    output wire zero,
    output wire sgn
); 

//���B�ĵ���λ����λʱֻ��Ҫ����λ
wire [4:0] shamt = B[4:0];

//����߼�ʵ������
always @ (*) begin
    case (op)
        `AND :
            C = A & B;
        `OR :
            C = A | B;
        `ADD :
            C = A + B;
        `SUB :
            C = A + (~B) + 1;
        `XOR :
            C = A ^ B;
        `SLL :
            C = A << shamt;
        `SRL :
            C = A >> shamt;
        `SRA :
            C = ( $signed(A) ) >>> shamt;
        default :
            C = 32'b0; 
    endcase
end

assign zero = (C == 32'b0) ? 1'b1 : 1'b0;
assign sgn = C[31];

endmodule