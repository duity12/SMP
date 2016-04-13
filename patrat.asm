


jmp code
w equ 90 ; dimensiune dreptunghi
h equ 70
code: mov ah, 0
 mov al, 13h ; trecere in mod grafic 320x200
 int 10h    
 mov al,14
 
  mov cx,2
 L4:
 mov ah, 02
 mov dl, 07h
 int 21h 
 JMP L1
 MOV	cx, 40
L1: 
  ; afisare latura inferioare
 mov cl, 100+w
 mov dx, 20+h
 
 
u2: mov ah, 0ch
 int 10h
 dec cl
 cmp cl, 100
  

 ja u2 
 
 ; latura din stanga
 mov cl, 100
 mov dx, 20+h
  
 
u3: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 20 

 ja u3
  
 ; afisare latura superioara
 mov cl, 100+w 
 mov dx, 20 
 
u5: mov ah, 0ch ; afisare pixel
 int 10h
 dec cl
 cmp cl, 100 
 
 jae u5
 ; latura din dreapta
 mov cl, 100+w
 mov dx, 20+h
 
 
 u6: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 20
    ja u6
          
          dec al
 ; afisare latura inferioare
 mov cl, 96+w
 mov dx, 16+h
 
 
u7: mov ah, 0ch
 int 10h
 dec cl
 cmp cl, 96
  

 ja u7 
 
 ; latura din stanga
 mov cl, 96
 mov dx, 16+h
  
 
u8: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 16 

 ja u8
  
 ; afisare latura superioara
 mov cl, 96+w ; coloana
 mov dx, 16 ; rand 
 
u9: mov ah, 0ch ; afisare pixel
 int 10h
 dec cl
 cmp cl, 96 
 
 jae u9
 ; latura din dreapta
 mov cl, 96+w
 mov dx, 16+h
 
 
 u0: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 16

 ja u0    
dec al 
cmp al,0
je L2
 
 
   mov al,2
L2: 
  ; afisare latura inferioare
 mov cl, 100+w
 mov dx, 20+h
 
 
a2: mov ah, 0ch
 int 10h
 dec cl
 cmp cl, 100 

 ja a2 
 
      

 ; latura din stanga
 mov cl, 100
 mov dx, 20+h
  
 
a3: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 20 

 ja a3 
 ; afisare latura superioara
 mov cl, 100+w ; coloana
 mov dx, 20 ; rand 
 
a1: mov ah, 0ch ; afisare pixel
 int 10h
 dec cl
 cmp cl, 100 
 
 jae a1
 ; latura din dreapta
 mov cl, 100+w
 mov dx, 20+h
 
 
 a4: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 20

 ja a4  
            inc al
; afisare latura inferioare
 mov cl, 92+w
 mov dx, 12+h
 
 
a7: mov ah, 0ch
 int 10h
 dec cl
 cmp cl, 92
  

 ja a7 
 
 ; latura din stanga
 mov cl, 92
 mov dx, 12+h
  
 
a8: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 12 

 ja a8
  
 ; afisare latura superioara
 mov cl, 92+w ; coloana
 mov dx, 12 ; rand 
 
a9: mov ah, 0ch ; afisare pixel
 int 10h
 dec cl
 cmp cl, 92 
 
 jae a9
 ; latura din dreapta
 mov cl, 92+w
 mov dx, 12+h
 
 
 a0: mov ah, 0ch
 int 10h
 dec dx   
 cmp dx, 12

 ja a0      
 inc al
 inc al
; afisare latura inferioare
 mov cl, 88+w
 mov dx, 8+h
 
 
b7: mov ah, 0ch
 int 10h
 dec cl
 cmp cl, 88
  

 ja b7 
 
 ; latura din stanga
 mov cl, 88
 mov dx, 8+h
  
 
b8: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 8 

 ja b8
  
 ; afisare latura superioara
 mov cl, 88+w ; coloana
 mov dx, 8 ; rand 
 
b9: mov ah, 0ch ; afisare pixel
 int 10h
 dec cl
 cmp cl, 88 
 
 jae b9
 ; latura din dreapta
 mov cl, 88+w
 mov dx, 8+h
 
 
 b0: mov ah, 0ch
 int 10h
 dec dx   
 cmp dx, 8

 ja b0    
     
inc al
  
cmp al,15
jg L1
 
 mov cx,2
 L3:
 mov ah, 02
 mov dl, 07h
 int 21h 
 LOOP L3
 
 mov ah,00
 int 16h  
 
