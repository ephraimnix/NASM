; On initialise les variables en leur donnant des valeurs
; Pour les résultats on leur attribue une valeur nulle

section .data  
    var1 db 4          
    var2 db 3          
    var3 db 2          
    first_result db 0    
    second_result db 0     
    third_result db 0    

; Début de l'éxécution du programme 

section .text  
    global _start

; On dépace la valeur de [var1] dans le registre al
; On y ajoute [var2] et [var3]
; On déplace la valeur du registre al dans la variable [first_result], variable qui contient la somme des 3 variables

_start:  
    mov al, [var1]    
    add al, [var2]     
    add al, [var3]     
    mov [first_result], al

; Ici, on fait la même chose, on déplace [var1] dans al 
; A la différence que cette fois-ci on soustrait [var1] par [var2] et [var3]
; Le tout étant déplacé dans la variable [second_result]

    mov al, [var1]     
    sub al, [var2]     
    sub al, [var3]     
    mov [second_result], al 

; On déplace [var1] et [var2] dans al et bl
; On multiplie al par bl avant de déplacer dans bl [var3]
; On fait la même opération puis on déplace le contenu de al dans la variable [third_result]
    mov al, [var1]       
    mov bl, [var2]      
    mul bl             
    mov bl, [var3]   
    mul bl             
    mov [third_result], al 

; Fin du programme avec la préparation de l'appel système
; xor ebx, ebx afin d'obtenir un code de sortie nul puis appel système

    mov eax, 1        
    xor ebx, ebx       
    int 0x80           
