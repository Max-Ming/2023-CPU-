`ifndef CPU_PARAM
`define CPU_PARAM

//NPC.npc�Ŀ����ź�npc_op
`define PC_4 2'b00
`define PC_IMM 2'b01
`define RD1_IMM 2'b10

//��������չѡ���ź�sext_op
`define IMM_I 3'b000
`define IMM_SHIFT 3'b001
`define IMM_S 3'b010
`define IMM_U 3'b011
`define IMM_B 3'b100
`define IMM_J 3'b101

//д�ؼĴ����ѵ�ѡ���ź�rf_sel
`define ALU_C 2'b00
`define DRAM_RD 2'b01
`define NPC_PC4 2'b10
`define SEXT_EXT 2'b11

//ALU.B��ѡ���ź�
`define ALU_B_RF_RD2 1'b0
`define ALU_B_SEXT_EXT 1'b1

//ALU����ѡ���ź�alu_op
`define AND 3'b000
`define OR  3'b001
`define ADD 3'b010
`define SUB 3'b011
`define XOR 3'b100
`define SLL 3'b101
`define SRL 3'b110
`define SRA 3'b111

//����ָ���opcode
`define OP_R 7'b0110011
`define OP_I 7'b0010011
`define OP_LOAD 7'b0000011
`define OP_JALR 7'b1100111
`define OP_S 7'b0100011
`define OP_B 7'b1100011
`define OP_U 7'b0110111
`define OP_JAL 7'b1101111

`endif