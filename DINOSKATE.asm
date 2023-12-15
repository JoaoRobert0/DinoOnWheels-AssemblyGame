.data

.text
main:
	jal start
	
	addi $v0, $0, 10 #Encerrar Programa
	syscall
	
start:	
	.include "scenario1.asm"
	jal dino1
	jal delay
	.include "scenario2.asm"
	jal dino1
	jal delay
	.include "scenario3.asm"
	jal dino1
	jal delay
	.include "scenario4.asm"
	jal dino1
	jal delay
	.include "scenario5.asm"
	jal dino1
	jal delay
	.include "scenario6.asm"
	jal dino1
	jal delay
	.include "scenario7.asm"
	jal dino1
	jal delay
	.include "scenario8.asm"
	jal dino1
	jal delay
	.include "scenario9.asm"
	jal dino1
	jal delay
	.include "scenario10.asm"
	jal dino1
	jal delay
	.include "scenario11.asm"
	jal dino1
	jal delay
	.include "scenario12.asm"
	jal dino1
	jal delay
	lui $t9, 0x1001
	lw $t0, 29756($t9)
	beq $t0, 0X00FF00DA, gameOver
	.include "scenario13.asm"
	jal dino1
	jal delay
	.include "scenario14.asm"
	jal dino1
	jal delay
	.include "scenario15.asm"
	jal dino1
	jal delay
	.include "scenario16.asm"
	jal dino1
	jal delay
	
	j start
	
delay:
	addi $t0, $zero, 0
	
	forDelay:
	beq $t0, 50000, sairDelay
	addi $t0, $t0, 1
	j forDelay
	
	sairDelay:
	jr $ra

dino1:
	lui $t9, 0x1001
	#COLOR PALETTE
    	addi $t0, $zero, 0X00FF00DA #Pink
   	addi $t1, $zero, 0X00000000 #Black
	addi $t2, $zero, 0X00FFFFFF #White
	addi $t3, $zero, 0X00903918 #Brown
	addi $t4, $zero, 0X00B00598 #Dark Pink
	addi $t5, $zero, 0X000100FF #Blue

	#Column16
	sw $t1, 21564($t9)
	sw $t1, 22076($t9)
	sw $t1, 22588($t9)
	sw $t0, 29756($t9)
	sw $t4, 30268($t9)

	#Column15
	sw $t1, 21048($t9)
	sw $t1, 21560($t9)
	sw $t1, 22072($t9)
	sw $t1, 22584($t9)
	sw $t1, 23608($t9)
	sw $t1, 25144($t9)
	sw $t1, 25656($t9)
	sw $t0, 29752($t9)
	sw $t0, 30264($t9)
	sw $t4, 30776($t9)

	#Column14
	sw $t1, 21044($t9)
	sw $t1, 21556($t9)
	sw $t1, 22068($t9)
	sw $t1, 22580($t9)
	sw $t1, 23604($t9)
	sw $t1, 25140($t9)
	sw $t0, 30260($t9)
	sw $t4, 30772($t9)
	sw $t2, 31284($t9)
	sw $t5, 31796($t9)


	#Column13
	sw $t0, 20528($t9)
	sw $t1, 21040($t9)
	sw $t1, 21552($t9)
	sw $t1, 22064($t9)
	sw $t1, 22576($t9)
	sw $t1, 23088($t9)
	sw $t1, 23600($t9)
	sw $t1, 24112($t9)
	sw $t1, 24624($t9)
	sw $t1, 25136($t9)
	sw $t1, 25648($t9)
	sw $t1, 26160($t9)
	sw $t1, 26672($t9)
	sw $t1, 27184($t9)
	sw $t1, 27696($t9)
	sw $t1, 28208($t9)
	sw $t1, 28720($t9)
	sw $t3, 29744($t9)
	sw $t0, 30256($t9)
	sw $t4, 30768($t9)
	sw $t5, 31280($t9)
	sw $t5, 31792($t9)

	#Column12
	sw $t0, 20012($t9)
	sw $t0, 20524($t9)
	sw $t1, 21036($t9)
	sw $t2, 21548($t9)
	sw $t1, 22060($t9)
	sw $t1, 22572($t9)
	sw $t1, 23084($t9)
	sw $t1, 23596($t9)
	sw $t1, 24108($t9)
	sw $t1, 24620($t9)
	sw $t1, 25132($t9)
	sw $t1, 25644($t9)
	sw $t1, 26156($t9)
	sw $t1, 26668($t9)
	sw $t1, 27180($t9)
	sw $t1, 27692($t9)
	sw $t1, 28204($t9)
	sw $t1, 28716($t9)
	sw $t1, 29228($t9)
	sw $t3, 29740($t9)
	sw $t0, 30252($t9)
	sw $t4, 30764($t9)

	#Column11
	sw $t0, 20008($t9)
	sw $t0, 20520($t9)
	sw $t1, 21032($t9)
	sw $t1, 21544($t9)
	sw $t1, 22056($t9)
	sw $t1, 22568($t9)
	sw $t1, 23080($t9)
	sw $t1, 23592($t9)
	sw $t1, 24104($t9)
	sw $t1, 24616($t9)
	sw $t1, 25128($t9)
	sw $t1, 25640($t9)
	sw $t1, 26152($t9)
	sw $t1, 26664($t9)
	sw $t1, 27176($t9)
	sw $t1, 27688($t9)
	sw $t1, 28200($t9)
	sw $t0, 30248($t9)
	sw $t4, 30760($t9)

	#Column10
	sw $t0, 20516($t9)
	sw $t1, 21028($t9)
	sw $t1, 21540($t9)
	sw $t1, 22052($t9)
	sw $t1, 22564($t9)
	sw $t1, 23076($t9)
	sw $t1, 23588($t9)
	sw $t1, 24100($t9)
	sw $t1, 24612($t9)
	sw $t1, 25124($t9)
	sw $t1, 25636($t9)
	sw $t1, 26148($t9)
	sw $t1, 26660($t9)
	sw $t1, 27172($t9)
	sw $t1, 27684($t9)
	sw $t0, 30244($t9)
	sw $t4, 30756($t9)

	#Column9
	sw $t1, 24096($t9)
	sw $t1, 24608($t9)
	sw $t1, 25120($t9)
	sw $t1, 25632($t9)
	sw $t1, 26144($t9)
	sw $t1, 26656($t9)
	sw $t1, 27168($t9)
	sw $t1, 27680($t9)
	sw $t1, 28192($t9)
	sw $t3, 29728($t9)
	sw $t0, 30240($t9)
	sw $t4, 30752($t9)

	#Column8
	sw $t1, 24604($t9)
	sw $t1, 25116($t9)
	sw $t1, 25628($t9)
	sw $t1, 26140($t9)
	sw $t1, 26652($t9)
	sw $t1, 27164($t9)
	sw $t1, 27676($t9)
	sw $t1, 28188($t9)
	sw $t1, 28700($t9)
	sw $t1, 29212($t9)
	sw $t3, 29724($t9)
	sw $t0, 30236($t9)
	sw $t4, 30748($t9)
	sw $t2, 31260($t9)
	sw $t5, 31772($t9)

	#Column7
	sw $t1, 25112($t9)
	sw $t1, 25624($t9)
	sw $t1, 26136($t9)
	sw $t1, 26648($t9)
	sw $t1, 27160($t9)
	sw $t1, 27672($t9)
	sw $t1, 28184($t9)
	sw $t1, 28696($t9)
	sw $t0, 30232($t9)
	sw $t4, 30744($t9)
	sw $t5, 31256($t9)
	sw $t5, 31768($t9)

	#Column6
	sw $t1, 24596($t9)
	sw $t1, 25108($t9)
	sw $t1, 25620($t9)
	sw $t1, 26132($t9)
	sw $t1, 26644($t9)
	sw $t1, 27156($t9)
	sw $t0, 29716($t9)
	sw $t0, 30228($t9)
	sw $t4, 30740($t9)

	#Column5
	sw $t1, 24080($t9)
	sw $t1, 24592($t9)
	sw $t1, 25104($t9)
	sw $t1, 25616($t9)
	sw $t1, 26128($t9)
	sw $t1, 26640($t9)
	sw $t0, 29712($t9)
	sw $t4, 30224($t9)
	
	jr $ra
	
gameOver:
	addi $v0, $zero, 10
	syscall


		
	


