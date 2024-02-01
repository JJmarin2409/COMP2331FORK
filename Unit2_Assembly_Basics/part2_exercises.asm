; Base Author: Megan Avery Spring 2024
; Exercise Author: Jose Marin
; 
; Purpose - to learn about the following:
;	-  directives (dx, resx, & times)
;	- printing ints and characters
;	- dumping memory
;	- printing strings
;	- reading chars and ints

%include "asm_io.inc"   ;Directive

age equ 30              ;Symbol
%define fav_number 34   ;Macro

; initialized data
segment .data

fav_color db "purple 🙈", 0     ;String
least_fav_color db "yellow", 0
helloWorld db "Hello World", 0  ;Hello world

letter db "A"                   ;char
number dd 95                    ;integer
myNameNum dd 74                 ;J = 74 ASCII Value

char_prompt db "Enter a character: ", 0
number_prompt db "Enter an integer: ", 0

many_numbers times 5 dd 12
many_chars times 5 db "Z"




; uninitialized data
segment .bss
space_for_number resd 1               ;space for one integer
space_for_char resb 1                 ;space for a char


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

		; TODO: add code

        ; mov dword[number], 116
        ; mov eax, [number]
        ; ;dump_regs 1
        ; call print_int            ;print number in base 10
        ; call print_nl

        ; mov al, [letter]
        ; call print_char

        ; call print_nl

;---------------------------------EXERCISE 1---------------------------------------------
        
        ; mov eax, [myNameNum]
        ; call print_int
        ; call print_nl
        ; call print_char

;--------------------------------------------------------------------------------------

        ;dump_mem 1, fav_color, 2

        ; mov eax, fav_color + 3 ;Skipping the first letters
        ; call print_string
        ; call print_nl
        ; mov eax, least_fav_color
        ; call print_string

;---------------------------------EXERCISE 2---------------------------------------------

        ; call print_nl

        ; mov eax, helloWorld
        ; call print_string

        ; call print_nl

        ; dump_mem 1, helloWorld, 0

;--------------------------------------------------------------------------------------

        ; mov eax, [space_for_number]
        ; call print_int
        ; call print_nl

        ; mov eax, number_prompt
        ; call print_string
        ; call read_int
        ; mov dword [space_for_number], eax

        ; mov eax, char_prompt
        ; call print_string
        ; call read_char                  ;reads user's prompt // Also read_int 
        ; call print_nl
        ; call print_char

;---------------------------------EXERCISE 3---------------------------------------------

        ; mov eax, char_prompt
        ; call print_string
        ; call read_char
        ; mov byte [space_for_char], al 

        ; call read_int 
        ; mov dword [space_for_number], eax

;--------------------------------------------------------------------------------------



;---------------------------------EXERCISE 4---------------------------------------------


        dump_mem 1, many_chars, 0
        call print_nl
        dump_mem 2, many_chars + 3, 0

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


