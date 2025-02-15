section.data
  txt db 'Operation terminee', 0

section.bss
   var resb 1

section.text
  global _start
  
_start :
  mov byte [var], 0

  boucle:  
  mov al, [var]
  cmp al, 5
  je end
  inc byte [var]
  jmp boucle

 end : 
  mov eax, 4
  mov ebx, 1
  mov ecx, txt
  mov edx, 18

   mov eax, 1
   xor ebx, ebx
   int 0x80


