bits 32
org 101000h
mov eax,21cd4cffh
mov edi,0a0000h
mov ax,0
mov bx,0
mov cx,320
mov dl,1
fors:
	call hline
	add bx,8
	cmp bx,199
	jb fors	
mov ax,0
mov bx,0
mov cx,199
mov dl,1
forss:
	call vline
	add ax,8
	cmp ax,319
	jb forss	
ret
ret
ret
hline:
	push eax
	push ebx
	push ecx
	push edx
	push esi
	push edi
	push ds
	push es
	cmp ax,0
	jg hline1
	mov ax,0
hline1:
	cmp bx,0
	jg hline2
	mov bx,0
hline2:
	cmp cx,0
	jg hline3
	mov cx,0
hline3:
	cmp ax,320
	jb hline4
	mov ax,319
hline4:
	cmp bx,200
	jb hline5
	mov bx,199
hline5:
	cmp cx,320
	jb hline6
	mov cx,319
hline6:
	cmp ax,cx
	jb hline7
	push ax	
	mov ax,cx
	pop cx
hline7:
	sub cx,ax
	push dx
	push cx
	push ax
	mov eax,0
	mov ax,bx
	mov ebx,320
	mov ecx,0
	mov edx,0
	clc
	mul ebx
	mov ebx,0a0000h
	clc
	add eax,ebx
	mov ebx,0	
	pop bx
	clc
	add eax,ebx
	mov edi,eax
	mov ax,0
	mov ds,ax
	pop cx
	pop ax
	inc cx
hline8:
	ds
	mov [edi],al
	inc edi
	dec cx
	jnz hline8

pop es
pop ds
pop edi
pop esi
pop edx
pop ecx
pop ebx
pop eax
ret
ret
ret
vline:
	push eax
	push ebx
	push ecx
	push edx
	push esi
	push edi
	push ds
	push es
	cmp ax,0
	jg vline1
	mov ax,0
vline1:
	cmp bx,0
	jg vline2
	mov bx,0
vline2:
	cmp cx,0
	jg vline3
	mov cx,0
vline3:
	cmp ax,320
	jb vline4
	mov ax,319
vline4:
	cmp bx,200
	jb vline5
	mov bx,199
vline5:
	cmp cx,200
	jb vline6
	mov cx,199
vline6:
	cmp bx,cx
	jb vline7
	push bx	
	mov bx,cx
	pop bx
vline7:
	sub cx,bx
	push dx
	push cx
	push ax
	mov eax,0
	mov ax,bx
	mov ebx,320
	mov ecx,0
	mov edx,0
	clc
	mul ebx
	mov ebx,0a0000h
	clc
	add eax,ebx
	mov ebx,0
	pop bx
	add eax,ebx
	mov edi,eax
	mov ax,0
	mov ds,ax
	pop cx
	pop ax
	inc cx
vline8:
	ds
	mov [edi],al
	add edi,320
	dec cx
	jnz vline8

pop es
pop ds
pop edi
pop esi
pop edx
pop ecx
pop ebx
pop eax
ret
ret
ret

