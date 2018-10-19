module processador(dataIn, Clock, Reset, DataOutMux, DataOutRegAlu, controlUla, controlMux, readWriteReg);
	input [15:0] dataIn;
	input Clock, Reset;
	input [2:0] readWriteReg;
	input [1:0] controlUla, controlMux;
	output [15:0] DataOutMux, DataOutRegAlu;
	
	wire [15:0] dataRFOut1, dataRFOut2, instruction, ulaOut;
	// wire [1:0] controlUla, controlMux; // Futuramente será interno controlado
	// wire [2:0] readWriteReg; // Futuramente será interno controlado
	
	
	registrador reginstruction (dataIn, Clock, 1, instruction);
	registrador regula (ulaOut, Clock, 1, DataOutRegAlu);
	
	banco_registradores registerfile (readWriteReg, readWriteReg, readWriteReg, DataOutMux, 1, dataRFOut1, dataRFOut2, Clock);
	
	ula unidadelogaritmetica (dataRFOut1, dataRFOut2, controlUla, ulaOut);
	
	multiplexador(dataRFOut1, dataRFOut2, dataIn, DataOutRegAlu, 0, 0, 0, 0, controlMux, DataOutMux);
endmodule