//-----------------------------------------------------------------------------------------------------
//                               University of Torino - Department of Physics
//                                   via Giuria 1 10125, Torino, Italy
//-----------------------------------------------------------------------------------------------------
// [Filename]       tb_DLATCH.v [TESTBENCH]
// [Project]        Advanced Electronics Laboratory course
// [Author]         Luca Pacher - pacher@to.infn.it
// [Language]       Verilog 2001 [IEEE Std. 1364-2001]
// [Created]        May 11, 2020
// [Modified]       -
// [Description]    Testbench module for DLATCH.
// [Notes]          -
// [Version]        1.0
// [Revisions]      11.05.2020 - Created
//-----------------------------------------------------------------------------------------------------


`timescale 1ns / 100ps

module tb_DLATCH ;


   ///////////////////////////
   //   device under test   //
   ///////////////////////////

   reg D = 1'b1 ;
   reg load ;

   wire Q ;

   DLATCH DUT ( .D(D), .EN(load), .D(D), .Q(Q) ) ;


   //////////////////
   //   stimulus   //
   //////////////////

   // use the $random Verilog task to generate a random input pattern
   always #(20.0) D = $random ;             // **WARN: $random returns a 32-bit integer ! Here there is an implicit TYPE CASTING

   initial begin

      #100 load = 1'b0 ;
      #500 load = 1'b1 ;
      #300 load = 1'b0 ;
      #750 load = 1'b1 ;
      #300 load = 1'b0 ;

      #300 $finish ;   // stop the simulation
   end

endmodule

