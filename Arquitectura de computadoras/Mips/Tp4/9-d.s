d) Generar string Escribir un programa que genere un string de la siguiente forma: “abbcccddddeeeee….”, así hasta la
letra “h”. Para ello debe utilizar un loop e ir guardando los códigos ascii en la memoria. El string debe finalizar con el
valor ascii 0 para que esté bien formado (debe agregar un elemento más, que valga 0, al final del string).


.data
cadena: .asciiz ""
.code
daddi $t0, $0, 0 ; va a servir de puntero para moverse en la cadena
daddi $t1, $0, 0x61 ; 61 = 'a'
daddi $t3, $0, 0x68;  68 = 'h'
daddi $t4, $0, 0 ; va a ser la cantidad de letras
daddi $t5, $0, 0 ; va a servir para aumentar la cantidad de letras
loop: sb $t1, cadena ($t0) ; vamos a guardar la letra
daddi $t0, $t0, 1 ; me muevo 1 en la cadena
slt $t6, $t4, $t5 ; si $t4 es menor que $t5 da = 1
daddi $t4, $t4, 1
bnez $t6, loop
daddi $t4, $0, 0; reseteo la cantidad de letras
daddi $t5, $t5, 1; va a aumentar en 1 la cantidad de letras a guardar
beq $t1, $t3, fin ; cuando t1 = t3, va a saltar a fin
daddi $t1, $t1, 1 ; paso a la sig letra
j loop
fin: sb $0, cadena ($0)
halt

