%include 'begin_end.asm'
%include 'print.asm'
SECTION .data
    msg db 'hello,world',0ah
SECTION .text
global _start
_start:
    mov eax, msg
    call print
    call quit
