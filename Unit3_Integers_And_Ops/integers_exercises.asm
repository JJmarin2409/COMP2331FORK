; Base Author: Megan Avery Spring 2024
; Exercise Author: Jose Marin
;
; Purpose - to learn about the following:
;	- sign extension, decreasing/ increasing data size
;	- two's complement addition & subtraction
;	- integer multiplication
;	- integer division
;	- the neg instruction

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

        ; Making bit smaller
        mov eax, -34              ; saves -34 into eax
        dump_regs 1               ; EAX = FFFFFFDE // Dumps regs 

        call print_nl

        mov eax, 0                ; saves 0 into eax
        mov al, 0DEH              ; saves -34 into eax
        dump_regs 2               ; EAX = 000000DE // Dumps regs 
        call print_nl

        call print_int 

        mov eax, 0FFFFFFFFH
        mov al, 0DEH
        call print_nl

        call print_int
        call print_nl

        mov eax, -1
        mov ax, 58
        dump_regs 3  
        call print_nl

        movzx eax, ax
        dump_regs 4

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


