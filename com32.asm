bits 32
org 101000h
mov eax,21cd4cffh
mov edi,0a0000h
mov ecx,60000
mov ax,0
mov ds,ax
mov al,1
fors:
	ds
	mov [edi],al
	inc edi
	dec ecx
	cmp ecx,0
	jnz fors
ret
ret
ret

