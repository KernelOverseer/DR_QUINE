global _main;This is my third quine in ASM
extern _dprintf
extern _open
extern _close
section .text
%macro main 0
_main:
push rbx
mov r9, 5
cmp r9, 0
je end
loop:
dec r9
push r9
push r9
mov rcx, r9
call open_file
mov rdi, rax
mov rsi, r9
call write_file
pop r9
pop r9
cmp r9, 0
jne loop
end:
mov eax, 0
pop rbx
ret
%endmacro
open_file:
push rbx
mov r8, filename
add r8, 6
add [r8], cl
mov rdi, filename
mov rsi, 0x601
mov rdx, 0x1a4
call _open
mov [r8], byte 48
pop rbx
ret
write_file:
push rbx
mov r9, rsi
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
db "Sully_0.s", 0
code:
db "global _main;This is my third quine in ASM%2$cextern _dprintf%2$cextern _open%2$cextern _close%2$csection .text%2$c%%macro main 0%2$c_main:%2$cpush rbx%2$cmov r9, %4$d%2$ccmp r9, 0%2$cje end%2$cloop:%2$cdec r9%2$cpush r9%2$cpush r9%2$cmov rcx, r9%2$ccall open_file%2$cmov rdi, rax%2$cmov rsi, r9%2$ccall write_file%2$cpop r9%2$cpop r9%2$ccmp r9, 0%2$cjne loop%2$cmov eax, 0%2$cpop rbx%2$cret%2$c%%endmacro%2$copen_file:%2$cpush rbx%2$cmov r8, filename%2$cadd r8, 6%2$cadd [r8], cl%2$cmov rdi, filename%2$cmov rsi, 0x601%2$cmov rdx, 0x1a4%2$ccall _open%2$cmov [r8], byte 48%2$cpop rbx%2$cret%2$cwrite_file:%2$cpush rbx%2$cmov r9, rsi%2$cmov rsi, code%2$cmov rdx, code%2$cmov rcx, 10%2$cmov r8, 34%2$ccall _dprintf%2$cpop rbx%2$cret%2$cmain%2$csection .data%2$cfilename:%2$cdb %3$cSully_0.s%3$c, 0%2$ccode:%2$cdb %3$c%1$s%3$c%2$c"
