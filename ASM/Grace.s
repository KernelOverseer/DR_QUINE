global _main;This is my second quine in ASM
extern _dprintf
extern _open
extern _close
section .text
%macro main 0
_main:
push rbx
call open_file
mov rdi, rax
call write_file
mov eax, 0
pop rbx
ret
%endmacro
open_file:
push rbx
mov rdi, filename
mov rsi, 0x601
mov rdx, 0x1a4
call _open
pop rbx
ret
write_file:
push rbx
mov rsi, code
mov rdx, code
mov rcx, 10
mov r8, 34
call _dprintf
pop rbx
ret
main
section .data
filename:
db "Grace_kid.s", 0
code:
db "global _main;This is my second quine in ASM%2$cextern _dprintf%2$cextern _open%2$cextern _close%2$csection .text%2$c%%macro main 0%2$c_main:%2$cpush rbx%2$ccall open_file%2$cmov rdi, rax%2$ccall write_file%2$cmov eax, 0%2$cpop rbx%2$cret%2$c%%endmacro%2$copen_file:%2$cpush rbx%2$cmov rdi, filename%2$cmov rsi, 0x601%2$cmov rdx, 0x1a4%2$ccall _open%2$cpop rbx%2$cret%2$cwrite_file:%2$cpush rbx%2$cmov rsi, code%2$cmov rdx, code%2$cmov rcx, 10%2$cmov r8, 34%2$ccall _dprintf%2$cpop rbx%2$cret%2$cmain%2$csection .data%2$cfilename:%2$cdb %3$cGrace_kid.s%3$c, 0%2$ccode:%2$cdb %3$c%1$s%3$c%2$c"
