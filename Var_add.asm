; On déclare trois variables ; var1 ; var2 et result
; On leur assigne une valeur avec db 
; Cette première partie de code est l'initialisation et la définition de variables

section .data  
    var1 db 4          
    var2 db 10         
    result db 0        

; Indique le début de l'écriture de code exécutable
; L'exécution du programme démarre à _start

section .text  
    global _start

; mov permet de charger une valeur dans un registre
; add permet d'ajouter une valeur à un registre 
; move [result], al permet de déplacer la valeur contenue dans le registre AL dans la variable result

_start:
    mov al, [var1]      
    add al, [var2]     
    mov [result], al   

; Ici on assigne 1 comme valeur au registre eax
; Le registre eax est un registre utilisé pour les opération arithmétiques 
; En lui assignant 1 comme valeur on indique qu'on arrête le programme
; On utilise l'opérateur XOR pour manipuler le registre ebx
; Cette opération nous permet d'assigner 0 à ebx 
; ebx renvoyant 0 indique un succcès du programme
; L'instruction int est une instruction d'arrêt déclenchant une interruption logicielle
; 0x80 est un numéro d'interruption
; 0x80 désigne un appel système

    mov eax, 1         
    xor ebx, ebx        
    int 0x80           
