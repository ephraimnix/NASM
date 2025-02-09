section.data
  prompt db 'Taper une valeur', 0
  prompt_len equ $ - prompt
  buffer db 128

section.bss
  input resb 128

section.text
global_start

_start :
; Premièrement on doit afficher le langage
; Ensuite on peut lire l'entrée de l'utilisateur
; Puis on l'affiche avant de finir l'éxécution du programme

    mov rax, 1                                
    mov rdi, 1                                
    mov rsi, prompt                            
    mov rdx, prompt_len                        
    syscall

; Lecture de l'entrée

    mov rax, 0                               
    mov rdi, 0                                
    mov rsi, input                           
    mov rdx, 128                             
    syscall

; Affichage de l'entrée 
    mov rax, 1                                
    mov rdi, 1                               
    mov rsi, input                           
    mov rdx, rax                             
    syscall

; Fin du programme
    mov rax, 60                            
    xor rdi, rdi                              
    syscall
