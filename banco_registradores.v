module banco_registradores (Read1, Read2, WriteReg, WriteData, RegWrite, Data1, Data2, clock);
  input [2:0] Read1, Read2, WriteReg; // Indices dos registradores
  input [15:0] WriteData; // Dado a ser registrado em escrita
  input RegWrite, clock; // Flags de habilitar escrita e clock
  output [15:0] Data1, Data2; // Dados de leitura do registrador

  wire [15:0] s0, s1, s2, s3, s4, s5, s6, s7;
  wire [7:0] index;

  decodificador d1 (WriteReg, index);

  registrador r0 (WriteData, index[0], RegWrite, s0);
  registrador r1 (WriteData, index[1], RegWrite, s1);
  registrador r2 (WriteData, index[2], RegWrite, s2);
  registrador r3 (WriteData, index[3], RegWrite, s3);
  registrador r4 (WriteData, index[4], RegWrite, s4);
  registrador r5 (WriteData, index[5], RegWrite, s5);
  registrador r6 (WriteData, index[6], RegWrite, s6);
  registrador r7 (WriteData, index[7], RegWrite, s7);
  
  multiplexador m1 (s0, s1, s2, s3, s4, s5, s6, s7, Read1, Data1);
  multiplexador m2 (s0, s1, s2, s3, s4, s5, s6, s7, Read2, Data2);
endmodule