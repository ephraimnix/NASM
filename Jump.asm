section.data
  password db '1234', 0, 
  good_msg 'Sucess', 0,
  bad_msg 'Fail', 0,

section.bss
  user_text resb 4

section.text
  global _start 

_start :
  mov eax, 3
  mov ebx, 0
  mov ecx, user_text
  mov edx, 4
  int 0x80

; Comparison
  mov eax, [user_text]
  cmp eax, [password]
  je success

success : 
  mov eax, 4
  mov ebx 1
  mov ecx, good_msg
  mov dbx, len good_msg
  int 0x80

failure :
  mov eax, 4
  mov ebx, 1
  mov ecx, bad_msg
  mov edx, len bad_msg

stop : 


