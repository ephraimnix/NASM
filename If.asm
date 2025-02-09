section.data
  txt db 'Operation terminee', 0

section.bss
   var resb 1

section.text
  global_start
  
_start :
  boucle: 
  move byte [var], 0
  move al, [var],
  cmp al, 5
  je end
  inc byte [var]
  jmp boucle

end : 
  move eax, 4
  move ebx, 1
  move ecx, txt
  move edx, 18

   move eax, 1
   xor ebx, ebx
   int 0x80


