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
  
