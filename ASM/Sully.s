global _main;This is my third quine in ASM
extern _printf
extern _dprintf
extern _open
extern _close
extern _access
extern _sprintf
extern _system
section .text
%macro main 0
_main:
push rbx
mov r9, 5
cmp r9, 0
jle end
mov rcx, r9
call check_file
mov rcx, rax
mov r12, rax
call open_file
mov rdi, rax
mov r9, r12
call write_file
call exec_child
end:
mov rax, 0
pop rbx
ret
%endmacro
exec_child:
push rbx
mov rdi, exec_buff
mov rsi, command
mov rdx, filename
call _sprintf
mov rdi, exec_buff
call _system
pop rbx
ret
check_file:
push rbx
mov r12, rcx
call make_filename
mov rdi, filename
mov rsi, 0;F_OK
call _access
cmp rax, -1
jne end_check
add r12, 1
end_check:
pop rbx
dec r12
mov rax, r12
ret
make_filename:
push rbx
mov rdi, filename
mov rsi, fileformat
mov rdx, rcx
call _sprintf
pop rbx
ret
open_file:
push rbx
call make_filename
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
db "Sully_X.s",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
fileformat:
db "Sully_%d.s", 0
command:
db "nasm -f macho64 %s -o cj.o;gcc -m64 -lc -o cj cj.o 2>&-;./cj;rm -f cj cj.o",0
exec_buff:
db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
code:
db "global _main;This is my third quine in ASM%2$cextern _printf%2$cextern _dprintf%2$cextern _open%2$cextern _close%2$cextern _access%2$cextern _sprintf%2$cextern _system%2$csection .text%2$c%%macro main 0%2$c_main:%2$cpush rbx%2$cmov r9, %4$d%2$ccmp r9, 0%2$cjle end%2$cmov rcx, r9%2$ccall check_file%2$cmov rcx, rax%2$cmov r12, rax%2$ccall open_file%2$cmov rdi, rax%2$cmov r9, r12%2$ccall write_file%2$ccall exec_child%2$cend:%2$cmov rax, 0%2$cpop rbx%2$cret%2$c%%endmacro%2$cexec_child:%2$cpush rbx%2$cmov rdi, exec_buff%2$cmov rsi, command%2$cmov rdx, filename%2$ccall _sprintf%2$cmov rdi, exec_buff%2$ccall _system%2$cpop rbx%2$cret%2$ccheck_file:%2$cpush rbx%2$cmov r12, rcx%2$ccall make_filename%2$cmov rdi, filename%2$cmov rsi, 0;F_OK%2$ccall _access%2$ccmp rax, -1%2$cjne end_check%2$cadd r12, 1%2$cend_check:%2$cpop rbx%2$cdec r12%2$cmov rax, r12%2$cret%2$cmake_filename:%2$cpush rbx%2$cmov rdi, filename%2$cmov rsi, fileformat%2$cmov rdx, rcx%2$ccall _sprintf%2$cpop rbx%2$cret%2$copen_file:%2$cpush rbx%2$ccall make_filename%2$cmov rdi, filename%2$cmov rsi, 0x601%2$cmov rdx, 0x1a4%2$ccall _open%2$cpop rbx%2$cret%2$cwrite_file:%2$cpush rbx%2$cmov rsi, code%2$cmov rdx, code%2$cmov rcx, 10%2$cmov r8, 34%2$ccall _dprintf%2$cpop rbx%2$cret%2$cmain%2$csection .data%2$cfilename:%2$cdb %3$cSully_X.s%3$c,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0%2$cfileformat:%2$cdb %3$cSully_%%d.s%3$c, 0%2$ccommand:%2$cdb %3$cnasm -f macho64 %%s -o cj.o;gcc -m64 -lc -o cj cj.o 2>&-;./cj;rm -f cj cj.o%3$c,0%2$cexec_buff:%2$cdb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0%2$ccode:%2$cdb %3$c%1$s%3$c, 0%2$c", 0
