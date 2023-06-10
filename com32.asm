bits 32
org 101000h
mov eax,21cd4cffh
mov edi,0a0000h
mov ecx,60000
mov ax,0
mov ds,ax
mov al,1
mov ah,1
fors:
	ds
	mov [edi],al
	inc edi
	mov al,ah
	mov esi,edi
	and esi,15
	cmp esi,8
	jnz for1
	mov al,9
for1:
	dec ecx
	cmp ecx,0
	jnz fors
ret
ret
ret

