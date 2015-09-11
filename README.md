# LAMBDA: The Ultimate Opcode

This repo is an implementation of Steele and Sussman's prototype lisp processor
presented in "AI Memo No. 514, Design of LISP-Based Processors".

## The Paper

- [repo copy](./AIM-514.pdf)
- [MIT copy](http://dspace.mit.edu/handle/1721.1/5731)
- [readscheme copy](http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-514.pdf)
- [ipfs](http://ipfs.io) QmfWwQpJTrGhKKB2JShQFnNK1KAPUTurqJtRZkQA7sxUdG

## The Design

The idea that Steele and Sussman come to is that, since you can write a
metacircular interpreter for LISP or at least some interesting mutable dialect
of scheme you can conceive of a machine as either a physical machine or as the
software virtual machine interpreting LISP code and discover that in terms at
least of operational semantics it doesn't matter whether a LISP program is
compiled, interpreted in hardware, interpreted in software or something else.

The design which Steele invented and presents here is for a two part or perhaps
even two core chip. The two presented logical components are the ALU, Pg. 15 (which
in AIM-514 doesn't do much) and a separate memory controller ("storage
controller", Pg. 18). The ALU exists to deal with interpreting LISP opcodes,
whereas the memory controller

## The Implementation
