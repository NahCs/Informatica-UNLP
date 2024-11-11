.data
vector: .word 1,3,5
res: .word 0
.code
daddi $s0, $0, 8
ld $s1, vector($0)
dadd $s2, $0, $s1
ld $s1, vector($s0)
dadd $s2, $s2, $s1
daddi $s0, $s0, 8
ld $s1, vector($s0)
dadd $s2, $s2, $s1
sd $s2, res($0)
halt
