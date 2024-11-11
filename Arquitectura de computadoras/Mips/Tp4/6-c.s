c) Calcular la suma de los 3 valores utilizando un lazo, con una dirección base de 0 y un registro como puntero.
Pista: Cargar la dirección en un registro con daddi $t2, $zero, V y luego cargar los valores con ld $t1,
0($t2)
## En caso de descargar el archivo borrar enunciado, sino el mips no te lo toma ##

.data
V: .word 16, 16, 16
RES: .word 0

.code
daddi $t2, $zero, V

daddi $t9, $zero, 3

loop:
beq $t8, $t9, fin
ld $t1, 0($t2)
dadd $t0, $t0, $t1
daddi $t2, $t2, 8

daddi $t8, $t8, 1
j loop

fin:
sd $t0, RES ($zero)
halt
