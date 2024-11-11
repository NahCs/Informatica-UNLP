b) Calcular la suma de los 3 valores utilizando un lazo con la dirección base y un registro como desplazamiento. Pista:
Idem anterior, pero ahora con una única instrucciones de lectura y $t2 se incrementa dentro de un loop

.data
vector: .word 5,2,6
res: .word 0
.code
daddi $t1, $0, 3
dadd $s0, $0, $0
loop: ld $s1, vector($s0)
dadd $s2, $s2, $s1
daddi $s0, $s0, 8
daddi $t1, $t1, -1
bnez $t1, loop
sd $s2, res($0)
halt
