.data
arr:
    .word 1, 2, 3, 4, 5,6,7,8,9,10 

.text
.globl _start

_start:
    la   t4, arr
    li   t0, 0  # i
    li   t1, 10  # n
    li   t3, 0  # total

  

    
loop:
    beq  t0, t1, done    # should stop when t0 == 10?
    lw   t2, 0(t4)       # wrong base register
    add  t3, t3, t2      # t3 uninitialized
    addi t4, t4, 4       # increment pointer
    addi t0, t0, 1
    j loop    # inefficient jump

done:
    mv   a0, t3
    li   a7, 93
    ecall
