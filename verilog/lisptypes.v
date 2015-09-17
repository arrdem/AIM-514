// A file full of lisp types
//
// Tags are 8 bit quantities.
// 
// - Bit 0 indicates op or data. It is an error for the PC to take on
//   a value pointer rather than an op pointer.
//
// - Bits 1:6 are the op tag itself, a 64 opcode rage of which few are
//   actually used. More than sufficient.
//
// - Bit 7 is a garbage collection bit. The meaning of this bit is
//   time variant, but it is used as a flag during collection.

// Op tags
//========================================

// FIXME: put some reason to these numbers beyond a crude guess at
// relative frequencies of use. Talk to Curtis about entropy based ISA
// codings?

`define local_op_tag 8'bx000_0001
`define do_op_tag    8'bx000_0011
`define cons_op_tag  8'bx000_0101
`define car_op_tag   8'bx000_0111
`define cdr_op_tag   8'bx000_1001
`define setq_op_tag  8'bx000_1011
`define if_op_tag    8'bx000_1101
`define bind_op_tag  8'bx000_1111

// Data type tags
//========================================
`define nil_type_tag    8'bx000_0010
`define list_type_tag   8'bx000_0100
`define symbol_type_tag 8'bx000_0110
`define number_type_tag 8'bx000_1000

module wordslicer();

endmodule
