; Calcule square using Addition
[ORG 0x0100] ; Orignate with given off-set

MOV AX,0		; Square will be computed in AX
MOV BX,[num]	; Move number on bx 

; Compute Square
loop1: ; Run loop number time (Placed in bx)
	ADD AX,[num] ; Add number that many times in Ax
	SUB BX,1
	JNZ loop1

; SAVE result in VERIABLE(square)
MOV [square],AX

; EXIT Programme
mov  ax, 0x4c00
int  0x21

; VERIABLES to save DATA
num: dw 10
square: dw 0
