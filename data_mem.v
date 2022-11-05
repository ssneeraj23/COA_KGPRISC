`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:59:09 11/04/2022 
// Design Name: 
// Module Name:    data_mem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module data_mem( clka,ena,wea,addra,dina,douta
    );
input clka;
input wea;
input ena;
input [31:0] addra,dina;
output [31:0] douta;


data_memory bram (
  .clka(clka), // input clka
  .ena(ena), // input ena
  .wea(wea), // input [0 : 0] wea
  .addra(addra[11:0]), // input [11 : 0] addra
  .dina(dina), // input [31 : 0] dina
  .douta(douta) // output [31 : 0] douta
);

endmodule
