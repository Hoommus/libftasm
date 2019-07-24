
*Just in case anybody will need it...*

## libftasm

Libftasm is a project which goal is to reimplement some of the standard
libc functions in pure assembly. In this specific case I used x64
Intel assembly and NASM assembler.

To build a static library just run `make`.

To build some simple tests as well, execute command `make test`
and run `test` binary.

The library builds and works well at least on macOS Mojave (10.14)

It also builds on Linux, but `ft_is*` functions don't work for some reason, 
which I've yet to figure out.