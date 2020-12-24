; This is my first quine in ASM
global _main
extern _printf
section .text
print:push rbx
mov rdi, code
mov rsi, code
mov rdx, 10
mov rcx, 34
call _printf
pop rbx
ret
_main:push rbx ;always allign the stack to 16
call print
pop rbx
ret
section .data
code: db "; This is my first quine in ASM%2$cglobal _main%2$cextern _printf%2$csection .text%2$cprint:push rbx%2$cmov rdi, code%2$cmov rsi, code%2$cmov rdx, 10%2$cmov rcx, 34%2$ccall _printf%2$cpop rbx%2$cret%2$c_main:push rbx ;always allign the stack to 16%2$ccall print%2$cpop rbx%2$cret%2$csection .data%2$ccode: db %3$c%1$s%3$c%2$c"
