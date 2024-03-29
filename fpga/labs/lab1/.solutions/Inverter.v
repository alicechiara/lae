//-----------------------------------------------------------------------------------------------------
//                               University of Torino - Department of Physics
//                                   via Giuria 1 10125, Torino, Italy
//-----------------------------------------------------------------------------------------------------
// [Filename]       Inverter.v
// [Project]        Advanced Electronics Laboratory course
// [Author]         Luca Pacher - pacher@to.infn.it
// [Language]       Verilog 2001 [IEEE Std. 1364-2001]
// [Created]        Apr 26, 2020
// [Modified]       -
// [Description]    Simple Verilog description for a NOT-gate (inverter) using either a continuous
//                  assignment or a gate-primitive instantiation.  
// [Notes]          -
// [Version]        1.0
// [Revisions]      26.04.2016 - Created
//-----------------------------------------------------------------------------------------------------

// this is a C-style single-line comment


/*

this is another C-style comment
but distributed across multiple lines

*/


`timescale 1ns / 100ps     // specify time-unit and time-precision, this is only for simulation purposes

module Inverter (

   input  wire X,
   output wire ZN ) ;      // this is redundant, by default I/O ports are always considered WIRES unless otherwise specified


   // continuous assignment
   assign ZN = ~X ;

   // conditional assignment
   //assign ZN = (X == 1'b1) ? 1'b0 : 1'b1 ;

   // primitive instantiation
   //not(ZN, X) ;

endmodule

