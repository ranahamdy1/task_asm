.model small
.stack 100
.data
.code
  main proc far
  mov bl,1
  mov ah,1
  int 21h
  
  mov cl,al
  add bl,30h
  mov ah,02h
  
  loop:
  mov dl,bl
  int 21h
  
  inc bl
  cmp bl,cl
  jle loop
  jmp her
  her:
   .exit
  main endp
end main