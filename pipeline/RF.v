`timescale 1ns / 1ps

`include "param.v"

module RF (
    input wire clk,
    input wire rst,
    //дʹ��
    input wire rf_we,
    input wire [4:0] rR1,
    input wire [4:0] rR2,
    //д��ַ
    input wire [4:0] wR,
    //д����
    input wire [31:0] wD,
    output wire [31:0] rD1,
    output wire [31:0] rD2
);

//�Ĵ�����
reg [31:0] rf[31:0];

//�첽��������߼�
assign rD1 = rf[rR1];
assign rD2 = rf[rR2];

integer i;

//ͬ��д��ʱ���߼�
always @ (posedge clk or posedge rst) begin
    if (rst) begin
        //�Ĵ���ȫ����0
        for (i = 0; i <= 31; i = i + 1) begin
            rf[i] <= 32'b0;
        end
    end
        else if (rf_we && wR != 5'b0) 
            //�� x0 �е�д����Ч
            rf[wR] <= wD; 
        else 
            rf[0] <= 32'b0;
end

endmodule