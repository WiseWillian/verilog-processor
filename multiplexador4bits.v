module multiplexador4bits(entrada0, entrada1, entrada2, entrada3, controle, saida);
  input [15:0] entrada0, entrada1, entrada2, entrada3;
  input [1:0] controle;
  output reg [15:0] saida;

  always@*
  begin
    case(controle)
      2'b00: saida <= entrada0;
      2'b01: saida <= entrada1;
      2'b10: saida <= entrada2;
      2'b11: saida <= entrada3;
    endcase
  end
endmodule