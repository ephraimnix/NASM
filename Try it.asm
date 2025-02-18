section.data 
  prompt db 'Entrer un chiffre entre 0 et 9', 0
  fail db 'Echec', 0
  win db 'Succes', 0
  try db 'Reessayez', 0
  loose db 'Perdu', 0
  random db, 0
  try db 3

section.bss
  extern printf, scanf, rand, srand, time  
  random resb 2

section.text 
  global _start

start :
