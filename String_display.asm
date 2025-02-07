; Section où l'on déclare les variables
; text sert d'étiquette pour la chaîne de caractère 
; Le 0 après la chaîne de caractères est une bonne pratique pour manipuler les strings

section .data  
    text db 'Marhaba',  0

; Section d'éxécution du texte

section .text  
    global _start

_start:

; On attribue à EAX la valeur 4 qui correspond au no d'appel système
; Ce no d'appel système nous permet d'écrire 
; Le registre EAX est un registre accumulateur
; Le registre EBX est un registre de base utilisé pour spécifier l'argument de l'appel système
; On attribue 1 à EBX ce qui nous permet d'écrire sur le terminal
; ECX contient l'adresse du texte à écrire, en l'occurrence l'étiquette text
; EDX contient le nombre de bytes à écrire
; int 0x80 permet l'appel système
    mov eax, 4           
    mov ebx, 1          
    mov ecx, text   
    mov edx, 7       
    int 0x80          

; En indiquant à EAX comme valeur 1, on lui indique qu'on souhaite quitter le programme
; (Chaque valeur pour un registre a une utilité propre) 
; Ensuite nous avons un no d'interruption et d'appel système

    mov eax, 1         
    xor ebx, ebx       
    int 0x80           
