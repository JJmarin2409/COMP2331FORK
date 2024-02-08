; Base Author: Megan Avery Spring 2024
; Exercise Author: Jose Marin

; Purpose - to learn the following:
; 	- logical shifts
;	- arithmetic shifts
;	- rotate shifts

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        ; SHIFT TO MUCH TO EITHER DIRECTION WILL END ON ALL ZEROS

        ; SHIFT TO THE LEFT (Multiply)
        ; shl 
        ; NEW BITS ARE ALWAYS ZERO
        ; MULIPLIES BY 2^(# OF BITS SHIFTED)

	; mov eax, 10
        ; shl eax, 3                ;multiply by 2^3 = 8
        ; call print_int
        ; call print_nl

        ; mov eax, 080000045H
        ; call print_int
        ; call print_nl
        ; shl eax, 1
        ; call print_int

        ; ;Incorrect
        ; mov ebx, 3
        ; mov eax, 20
        ; shl eax, ebx
        ; call print_int

        ; SHIFT TO THE RIGHT (divide)
        ; shr
        ; NEW BITS ARE ALWAYS ZERO
        ; MULIPLIES BY 2^(# OF BITS SHIFTED)
        
        mov eax, 23
        shr eax, 2 
        call print_int

        ; SHIFT ARITHMETIC RIGHT 
        ; DOES NOT SHIFT THE SIGN BIT 
        ; NEW BITS ADDED ARE COPIES OF THE SIGN BIT 

        ; ROL INSTRUCTION
        ; ROTATION SHIFT TO THE LEFT, BY A CERTAIN NUMBER OF BITS
        ; BITS SHIFTED OFF GO TO THE RIGHT SIDE 

        ; ROR INSTRUCTION 
        ; ROTATION SHIFT TO THE RIGHT, BY A CERTAIN NUMBER OF BITS
        ; BITS SHIFTED OFF GO TO THE LEFT SIDE 

        ; AND INSTRUCTION
        ; COMPARES BITS, BITS POSITION WITH BOTH BEING 1 STAY 1
        ; 0 OTHERWISE

        ; TEST OPERATION
        ; ZF FLAG = 0 
        ; The actual result isn’t stored anywhere

        ; mov eax, 4 
        ; mov ebx, 2
        ; test eax, ebx 
        ; dump_regs 1

        ; OR INTRUCTION
        ; COMPARES BITS, BITS POSITION WITH 1 IN AT MOST 1 NUMBER KEEP THEIR 1
        ; OTHERS RECEIVE 0S 

        ; NOT INTSTRUCTION 
        ; FLIP ALL THE BINARY BITS IN A NUMBER


        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


