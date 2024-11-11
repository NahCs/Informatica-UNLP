b) Contar apariciones de carácter Escribir un programa que cuente la cantidad de veces que un determinado carácter
aparece en una cadena de texto.


.data
cadena: .asciiz "adbdcdedfdgdhdid"
car: .ascii "d"
cant: .word 0
.code
dadd $s0, $0, $0
dadd $s1, $0, $0
lbu $s2, car($0)
loop: lbu $t0, cadena($s0)
beqz $t0,fin
bne $s2, $t0, sigue
daddi $s1, $s1, 1
sigue: daddi $s0, $s0, 1
j loop
fin: sd $s1, cant ($0)
halt
