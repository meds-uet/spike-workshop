# for spike
.data
arr:    .word  1,2,3,4,5


.text
.globl main
main:
    la t0, arr
    li t3, 5 #n
    
    li t1,0 #total
    li t2,0 #i
    jal ra,sum
 
sum:
    bge t2,t3,done
    lw t4, 0(t0)
    add t1,t1,t4
    addi t0,t0,4
    addi t2,t2,1
    j sum


done:
    mv a0,t1    
    li a7,93
    ecall




