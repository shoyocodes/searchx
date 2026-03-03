.data

array: .zero 1024

 

.text

.globl main

 

main:

la s0, array

li t0, 0

li t1, 256

init_loop:

bge t0, t1, init_done

slli t2, t0, 2

add t3, s0, t2

sw t0, 0(t3)

addi t0, t0, 1

j init_loop

init_done:

li a0, 4

jal linear_search

 

ecall

 

linear_search:

li t4, 0

li t5, 256

 

search_loop:

bge t4, t5, not_found

lw t3, 512(s0)

 

slli t6, t4, 2

add t1, s0, t6

lw t2, 0(t1)

beq t2, a0, found

addi t4, t4, 1

j search_loop

found:

mv a0, t4

jr ra

not_found:

li a0, -1

jr ra

