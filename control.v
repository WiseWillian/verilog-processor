module control(
  instruction,
  clock,
  writeEnableRegInstruction,
  writeEnableRegisterFile,
  writeEnableRegDout,
  writeEnableRegDadress,
  controlAlu,
  controlMux
);
  input [15:0] instruction;
  input clock;
  output [1:0] controlMux, controlAlu;
  output writeEnableRegInstruction, writeEnableRegisterFile, writeEnableRegDout, writeEnableRegDadress;

  

endmodule