a) Longitud de un string Escribir un programa que cuente la longitud de un string iterando el mismo hasta llegar al
valor 0 y guarde el resultado en una variable llamada LONGITUD. Probarlo con el string “ArquiTectuRa de
ComPutaDoras”.

.data
cadena: .asciiz "ArquiTectuRa de ComPutaDoras"
LONGITUD: .word 0
.code
daddi $s0, $0, 0
loop: lbu $t1, cadena ($s0)
beqz $t1, fin
daddi $s0, $s0, 1
j loop
fin: sd $s0, LONGITUD ($0)
halt
