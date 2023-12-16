.data

.text
main:
	jal start
	
	addi $v0, $0, 10 #Encerrar Programa
	syscall

start:	
	sce1:
	.include "scenario1.asm"
	bne $s0, 0, dino2Sce1
	jal check1
	j sce2
		dino2Sce1:
		jal dino2
		
	sce2:
	.include "scenario2.asm"
	bne $s0, 0, dino2Sce2
	jal check2
	j sce3
		dino2Sce2:
		jal dino2
		
	sce3:
	.include "scenario3.asm"
	bne $s0, 0, dino2Sce3
	jal check3
	j sce4
		dino2Sce3:
		jal dino2
		
	sce4:
	.include "scenario4.asm"
	bne $s0, 0, dino2Sce4
	jal check4
	j sce5
		dino2Sce4:
		jal dino2
		
	sce5:
	.include "scenario5.asm"
	bne $s0, 0, dino2Sce5
	jal check1
	j sce6
		dino2Sce5:
		jal dino2
		
	sce6:
	.include "scenario6.asm"
	bne $s0, 0, dino2Sce6
	jal check2
	j sce7
		dino2Sce6:
		jal dino2
		
	sce7:
	.include "scenario7.asm"
	bne $s0, 0, dino2Sce7
	jal check3
	j sce8
		dino2Sce7:
		jal dino2
		
	sce8:
	.include "scenario8.asm"
	bne $s0, 0, dino2Sce8
	jal check4
	j sce9
		dino2Sce8:
		jal dino2
		
	sce9:
	.include "scenario9.asm"
	bne $s0, 0, dino2Sce9
	jal check1
	j sce10
		dino2Sce9:
		jal dino2
		
	sce10:
	.include "scenario10.asm"
	bne $s0, 0, dino2Sce10
	jal check2
	j sce11
		dino2Sce10:
		jal dino2
		
	sce11:
	.include "scenario11.asm"
	bne $s0, 0, dino2Sce11
	jal check3
	j sce12
		dino2Sce11:
		jal dino2
		
	sce12:
	.include "scenario12.asm"
	bne $s0, 0, dino2Sce12
	jal check4
	lui $t9, 0x1001
	lw $t0, 29756($t9)
	beq $t0, 0X00FF00DA, gameOver
	j sce13
		dino2Sce12:
		jal dino2
		
	sce13:
	.include "scenario13.asm"
	bne $s0, 0, dino2Sce13
	jal check1
	lui $t9, 0x1001
	lw $t0, 29756($t9)
	beq $t0, 0X00FF00DA, gameOver
	j sce14
		dino2Sce13:
		jal dino2
		
	sce14:
	.include "scenario14.asm"
	bne $s0, 0, dino2Sce14
	jal check2
	lui $t9, 0x1001
	lw $t0, 29756($t9)
	beq $t0, 0X00FF00DA, gameOver
	j sce15
		dino2Sce14:
		jal dino2
		
	sce15:
	.include "scenario15.asm"
	bne $s0, 0, dino2Sce15
	jal check3
	lui $t9, 0x1001
	lw $t0, 29756($t9)
	beq $t0, 0X00FF00DA, gameOver
	j sce16
		dino2Sce15:
		jal dino2
		
	sce16:
	.include "scenario16.asm"
	bne $s0, 0, dino2Sce16
	jal check4
	j sce1
		dino2Sce16:
		jal dino2
		
	j start
	
check1:
	lui $t8, 0xffff
	addi $t0, $zero, 0
	
	forCheck1:
	beq $t0, 100, dino1.1
	lw $t1, 0($t8)
	beq $t1, 1, testJump1
	addi $t0, $t0, 1
	j forCheck1
	
	testJump1:
	beq $s0, 0, wKeyCheck1
	addi $t0, $t0, 1
	j forCheck1
	
	wKeyCheck1:
	lw $t1, 4($t8)
	beq $t1, 'w', dino2W
	addi $t0, $t0, 1
	j forCheck1

check2:
	lui $t8, 0xffff
	addi $t0, $zero, 0
	
	forCheck2:
	beq $t0, 100, dino1.2
	lw $t1, 0($t8)
	beq $t1, 1, testJump2
	addi $t0, $t0, 1
	j forCheck2
	
	testJump2:
	beq $s0, 0, wKeyCheck2
	addi $t0, $t0, 1
	j forCheck2
	
	wKeyCheck2:
	lw $t1, 4($t8)
	beq $t1, 'w', dino2W
	addi $t0, $t0, 1
	j forCheck2

check3:
	lui $t8, 0xffff
	addi $t0, $zero, 0
	
	forCheck3:
	beq $t0, 100, dino1.3
	lw $t1, 0($t8)
	beq $t1, 1, testJump3
	addi $t0, $t0, 1
	j forCheck3
	
	testJump3:
	beq $s0, 0, wKeyCheck3
	addi $t0, $t0, 1
	j forCheck3
	
	wKeyCheck3:
	lw $t1, 4($t8)
	beq $t1, 'w', dino2W
	addi $t0, $t0, 1
	j forCheck3

check4:
	lui $t8, 0xffff
	addi $t0, $zero, 0
	
	forCheck4:
	beq $t0, 100, dino1.4
	lw $t1, 0($t8)
	beq $t1, 1, testJump4
	addi $t0, $t0, 1
	j forCheck4
	
	testJump4:
	beq $s0, 0, wKeyCheck4
	addi $t0, $t0, 1
	j forCheck4
	
	wKeyCheck4:
	lw $t1, 4($t8)
	beq $t1, 'w', dino2W
	addi $t0, $t0, 1
	j forCheck4


dino1.1:
	lui $t9, 0x1001
	#COLOR PALETTE
    addi $t0, $zero, 0X00FF00DA #Pink
   	addi $t1, $zero, 0X00535454 #Black
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
	
	addi $t0, $zero, 0
	
	delayDino1.1:
	beq $t0, 20000, exitDino1.1
	addi $t0, $t0, 1
	j delayDino1.1
	
	exitDino1.1:
	jr $ra

dino1.2:
	lui $t9, 0x1001
	#COLOR PALETTE
    addi $t0, $zero, 0X00FF00DA #Pink
   	addi $t1, $zero, 0X00535454 #Black
	addi $t2, $zero, 0X00FFFFFF #White
	addi $t3, $zero, 0X00903918 #Brown
	addi $t4, $zero, 0X00B00598 #Dark Pink
	addi $t5, $zero, 0X000100FF #Blue

	#Column16
	sw $t1, 22588($t9)
	sw $t1, 23100($t9)
	sw $t1, 23612($t9)
	sw $t0, 29756($t9)
	sw $t4, 30268($t9)

	#Column15
	sw $t1, 22072($t9)
	sw $t1, 22584($t9)
	sw $t1, 23096($t9)
	sw $t1, 23608($t9)
	sw $t1, 24632($t9)
	sw $t1, 26168($t9)
	sw $t1, 26680($t9)
	sw $t0, 29752($t9)
	sw $t0, 30264($t9)
	sw $t4, 30776($t9)

	#Column14
	sw $t1, 22068($t9)
	sw $t1, 22580($t9)
	sw $t1, 23092($t9)
	sw $t1, 23604($t9)
	sw $t1, 24628($t9)
	sw $t1, 26164($t9)
	sw $t0, 30260($t9)
	sw $t4, 30772($t9)
	sw $t2, 31284($t9)
	sw $t5, 31796($t9)


	#Column13
	sw $t0, 21552($t9)
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
	sw $t0, 21036($t9)
	sw $t0, 21548($t9)
	sw $t1, 22060($t9)
	sw $t2, 22572($t9)
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
	sw $t0, 21032($t9)
	sw $t0, 21544($t9)
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
	sw $t0, 21540($t9)
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
	sw $t1, 25120($t9)
	sw $t1, 25632($t9)
	sw $t1, 26144($t9)
	sw $t1, 26656($t9)
	sw $t1, 27168($t9)
	sw $t1, 27680($t9)
	sw $t1, 28192($t9)
	sw $t1, 28704($t9)
	sw $t0, 30240($t9)
	sw $t3, 30752($t9)

	#Column8
	sw $t1, 25628($t9)
	sw $t1, 26140($t9)
	sw $t1, 26652($t9)
	sw $t1, 27164($t9)
	sw $t1, 27676($t9)
	sw $t1, 28188($t9)
	sw $t1, 28700($t9)
	sw $t1, 29212($t9)
	sw $t1, 29724($t9)
	sw $t1, 30236($t9)
	sw $t3, 30748($t9)
	sw $t2, 31260($t9)
	sw $t5, 31772($t9)

	#Column7
	sw $t1, 26136($t9)
	sw $t1, 26648($t9)
	sw $t1, 27160($t9)
	sw $t1, 27672($t9)
	sw $t1, 28184($t9)
	sw $t1, 28696($t9)
	sw $t1, 29208($t9)
	sw $t1, 29720($t9)
	sw $t0, 30232($t9)
	sw $t4, 30744($t9)
	sw $t5, 31256($t9)
	sw $t5, 31768($t9)

	#Column6
	sw $t1, 25620($t9)
	sw $t1, 26132($t9)
	sw $t1, 26644($t9)
	sw $t1, 27156($t9)
	sw $t1, 27668($t9)
	sw $t1, 28180($t9)
	sw $t0, 29716($t9)
	sw $t0, 30228($t9)
	sw $t4, 30740($t9)

	#Column5
	sw $t1, 25104($t9)
	sw $t1, 25616($t9)
	sw $t1, 26128($t9)
	sw $t1, 26640($t9)
	sw $t1, 27152($t9)
	sw $t1, 27664($t9)
	sw $t0, 29712($t9)
	sw $t4, 30224($t9)
	
	addi $t0, $zero, 0
	
	delayDino1.2:
	beq $t0, 20000, exitDino1.2
	addi $t0, $t0, 1
	j delayDino1.2
	
	exitDino1.2:
	jr $ra

dino1.3:
	lui $t9, 0x1001
	#COLOR PALETTE
    addi $t0, $zero, 0X00FF00DA #Pink
   	addi $t1, $zero, 0X00535454 #Black
	addi $t2, $zero, 0X00FFFFFF #White
	addi $t3, $zero, 0X00903918 #Brown
	addi $t4, $zero, 0X00B00598 #Dark Pink
	addi $t5, $zero, 0X000100FF #Blue

	#Column16
	sw $t1, 23612($t9)
	sw $t1, 24124($t9)
	sw $t1, 24636($t9)
	sw $t0, 29756($t9)
	sw $t4, 30268($t9)

	#Column15
	sw $t1, 23096($t9)
	sw $t1, 23608($t9)
	sw $t1, 24120($t9)
	sw $t1, 24632($t9)
	sw $t1, 25656($t9)
	sw $t1, 27192($t9)
	sw $t1, 27704($t9)
	sw $t0, 29752($t9)
	sw $t0, 30264($t9)
	sw $t4, 30776($t9)

	#Column14
	sw $t1, 23092($t9)
	sw $t1, 23604($t9)
	sw $t1, 24116($t9)
	sw $t1, 24628($t9)
	sw $t1, 25652($t9)
	sw $t1, 27188($t9)
	sw $t0, 30260($t9)
	sw $t4, 30772($t9)
	sw $t2, 31284($t9)
	sw $t5, 31796($t9)


	#Column13
	sw $t0, 22576($t9)
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
	sw $t0, 22060($t9)
	sw $t0, 22572($t9)
	sw $t1, 23084($t9)
	sw $t2, 23596($t9)
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
	sw $t0, 22056($t9)
	sw $t0, 22568($t9)
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
	sw $t1, 28712($t9)
	sw $t1, 29224($t9)
	sw $t0, 30248($t9)
	sw $t4, 30760($t9)

	#Column10
	sw $t0, 22564($t9)
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
	sw $t1, 28196($t9)
	sw $t1, 28708($t9)
	sw $t1, 29220($t9)
	sw $t0, 30244($t9)
	sw $t4, 30756($t9)

	#Column9
	sw $t1, 26144($t9)
	sw $t1, 26656($t9)
	sw $t1, 27168($t9)
	sw $t1, 27680($t9)
	sw $t1, 28192($t9)
	sw $t1, 28704($t9)
	sw $t1, 29216($t9)
	sw $t1, 29728($t9)
	sw $t0, 30240($t9)
	sw $t4, 30752($t9)
	sw $t3, 31776($t9)

	#Column8
	sw $t1, 26652($t9)
	sw $t1, 27164($t9)
	sw $t1, 27676($t9)
	sw $t1, 28188($t9)
	sw $t1, 28700($t9)
	sw $t1, 29212($t9)
	sw $t1, 29724($t9)
	sw $t1, 30236($t9)
	sw $t1, 30748($t9)
	sw $t1, 31260($t9)
	sw $t3, 31772($t9)

	#Column7
	sw $t1, 27160($t9)
	sw $t1, 27672($t9)
	sw $t1, 28184($t9)
	sw $t1, 28696($t9)
	sw $t1, 29208($t9)
	sw $t1, 29720($t9)
	sw $t1, 30232($t9)
	sw $t1, 30744($t9)
	sw $t5, 31256($t9)
	sw $t5, 31768($t9)

	#Column6
	sw $t1, 26644($t9)
	sw $t1, 27156($t9)
	sw $t1, 27668($t9)
	sw $t1, 28180($t9)
	sw $t1, 28692($t9)
	sw $t1, 29204($t9)
	sw $t0, 29716($t9)
	sw $t0, 30228($t9)
	sw $t4, 30740($t9)

	#Column5
	sw $t1, 26128($t9)
	sw $t1, 26640($t9)
	sw $t1, 27152($t9)
	sw $t1, 27664($t9)
	sw $t1, 28176($t9)
	sw $t1, 28688($t9)
	sw $t0, 29712($t9)
	sw $t4, 30224($t9)

	
	addi $t0, $zero, 0
	
	delayDino1.3:
	beq $t0, 20000, exitDino1.3
	addi $t0, $t0, 1
	j delayDino1.3
	
	exitDino1.3:
	jr $ra

dino1.4:
	lui $t9, 0x1001
	#COLOR PALETTE
    addi $t0, $zero, 0X00FF00DA #Pink
   	addi $t1, $zero, 0X00535454 #Black
	addi $t2, $zero, 0X00FFFFFF #White
	addi $t3, $zero, 0X00903918 #Brown
	addi $t4, $zero, 0X00B00598 #Dark Pink
	addi $t5, $zero, 0X000100FF #Blue

	#Column16
	sw $t1, 23100($t9)
	sw $t1, 23612($t9)
	sw $t1, 24124($t9)
	sw $t0, 29756($t9)
	sw $t4, 30268($t9)

	#Column15
	sw $t1, 22584($t9)
	sw $t1, 23096($t9)
	sw $t1, 23608($t9)
	sw $t1, 24120($t9)
	sw $t1, 25144($t9)
	sw $t1, 26680($t9)
	sw $t1, 27192($t9)
	sw $t0, 29752($t9)
	sw $t0, 30264($t9)
	sw $t4, 30776($t9)

	#Column14
	sw $t1, 22580($t9)
	sw $t1, 23092($t9)
	sw $t1, 23604($t9)
	sw $t1, 24116($t9)
	sw $t1, 25140($t9)
	sw $t1, 26676($t9)
	sw $t0, 30260($t9)
	sw $t4, 30772($t9)
	sw $t2, 31284($t9)
	sw $t5, 31796($t9)

	#Column13
	sw $t0, 22064($t9)
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
	sw $t0, 21548($t9)
	sw $t0, 22060($t9)
	sw $t1, 22572($t9)
	sw $t2, 23084($t9)
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
	sw $t0, 21544($t9)
	sw $t0, 22056($t9)
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
	sw $t1, 28712($t9)
	sw $t0, 30248($t9)
	sw $t4, 30760($t9)

	#Column10
	sw $t0, 22052($t9)
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
	sw $t1, 28196($t9)
	sw $t1, 28708($t9)
	sw $t0, 30244($t9)
	sw $t4, 30756($t9)

	#Column9
	sw $t1, 25632($t9)
	sw $t1, 26144($t9)
	sw $t1, 26656($t9)
	sw $t1, 27168($t9)
	sw $t1, 27680($t9)
	sw $t1, 28192($t9)
	sw $t1, 28704($t9)
	sw $t1, 29216($t9)
	sw $t0, 30240($t9)
	sw $t4, 30752($t9)

	#Column8
	sw $t1, 26140($t9)
	sw $t1, 26652($t9)
	sw $t1, 27164($t9)
	sw $t1, 27676($t9)
	sw $t1, 28188($t9)
	sw $t1, 28700($t9)
	sw $t1, 29212($t9)
	sw $t1, 29724($t9)
	sw $t0, 30236($t9)
	sw $t4, 30748($t9)
	sw $t2, 31260($t9)
	sw $t5, 31772($t9)

	#Column7
	sw $t1, 26648($t9)
	sw $t1, 27160($t9)
	sw $t1, 27672($t9)
	sw $t1, 28184($t9)
	sw $t1, 28696($t9)
	sw $t1, 29208($t9)
	sw $t1, 29720($t9)
	sw $t1, 30232($t9)
	sw $t4, 30744($t9)
	sw $t5, 31256($t9)
	sw $t5, 31768($t9)

	#Column6
	sw $t1, 26132($t9)
	sw $t1, 26644($t9)
	sw $t1, 27156($t9)
	sw $t1, 27668($t9)
	sw $t1, 28180($t9)
	sw $t1, 28692($t9)
	sw $t1, 29716($t9)
	sw $t1, 30228($t9)
	sw $t4, 30740($t9)

	#Column5
	sw $t1, 25616($t9)
	sw $t1, 26128($t9)
	sw $t1, 26640($t9)
	sw $t1, 27152($t9)
	sw $t1, 27664($t9)
	sw $t1, 28176($t9)
	sw $t1, 29712($t9)
	sw $t4, 30224($t9)

	#Column4
	sw $t3, 29708($t9)
	sw $t3, 30220($t9)
	
	addi $t0, $zero, 0
	
	delayDino1.4:
	beq $t0, 20000, exitDino1.4
	addi $t0, $t0, 1
	j delayDino1.4
	
	exitDino1.4:
	jr $ra
dino2W:
	addi $s0, $zero, 8
	lui $t9, 0x1001
	#COLOR PALETTE
    addi $t0, $zero, 0X00FF00DA #Pink
   	addi $t1, $zero, 0X00535454 #Black
	addi $t2, $zero, 0X00FFFFFF #White
	addi $t3, $zero, 0X00903918 #Brown
	addi $t4, $zero, 0X00B00598 #Dark Pink
	addi $t5, $zero, 0X000100FF #Blue

	#Column16
	sw $t1, 5692($t9)
	sw $t1, 6204($t9)
	sw $t1, 6716($t9)
	sw $t4, 16444($t9)
	sw $t0, 16956($t9)

	#Column15
	sw $t1, 5176($t9)
	sw $t1, 5688($t9)
	sw $t1, 6200($t9)
	sw $t1, 6712($t9)
	sw $t1, 7736($t9)
	sw $t1, 9272($t9)
	sw $t1, 9784($t9)
	sw $t4, 15928($t9)
	sw $t0, 16440($t9)
	sw $t0, 16952($t9)

	#Column14
	sw $t1, 5172($t9)
	sw $t1, 5684($t9)
	sw $t1, 6196($t9)
	sw $t1, 6708($t9)
	sw $t1, 7732($t9)
	sw $t1, 9268($t9)
	sw $t5, 14900($t9)
	sw $t5, 15412($t9)
	sw $t4, 15924($t9)
	sw $t0, 16436($t9)

	#Column13
	sw $t0, 4144($t9)
	sw $t1, 5168($t9)
	sw $t1, 5680($t9)
	sw $t1, 6192($t9)
	sw $t1, 6704($t9)
	sw $t1, 7216($t9)
	sw $t1, 7728($t9)
	sw $t1, 8240($t9)
	sw $t1, 8752($t9)
	sw $t1, 9264($t9)
	sw $t1, 9776($t9)
	sw $t1, 10288($t9)
	sw $t1, 10800($t9)
	sw $t1, 11312($t9)
	sw $t1, 11824($t9)
	sw $t1, 12336($t9)
	sw $t1, 12848($t9)
	sw $t3, 13872($t9)
	sw $t5, 14896($t9)
	sw $t2, 15408($t9)
	sw $t4, 15920($t9)
	sw $t0, 16432($t9)

	#Column12
	sw $t0, 3628($t9)
	sw $t0, 4140($t9)
	sw $t1, 5164($t9)
	sw $t2, 5676($t9)
	sw $t1, 6188($t9)
	sw $t1, 6700($t9)
	sw $t1, 7212($t9)
	sw $t1, 7724($t9)
	sw $t1, 8236($t9)
	sw $t1, 8748($t9)
	sw $t1, 9260($t9)
	sw $t1, 9772($t9)
	sw $t1, 10284($t9)
	sw $t1, 10796($t9)
	sw $t1, 11308($t9)
	sw $t1, 11820($t9)
	sw $t1, 12332($t9)
	sw $t1, 12844($t9)
	sw $t1, 13356($t9)
	sw $t3, 13868($t9)
	sw $t4, 15916($t9)
	sw $t0, 16428($t9)

	#Column11
	sw $t0, 3624($t9)
	sw $t0, 4136($t9)
	sw $t1, 5160($t9)
	sw $t1, 5672($t9)
	sw $t1, 6184($t9)
	sw $t1, 6696($t9)
	sw $t1, 7208($t9)
	sw $t1, 7720($t9)
	sw $t1, 8232($t9)
	sw $t1, 8744($t9)
	sw $t1, 9256($t9)
	sw $t1, 9768($t9)
	sw $t1, 10280($t9)
	sw $t1, 10792($t9)
	sw $t1, 11304($t9)
	sw $t1, 11816($t9)
	sw $t1, 12328($t9)
	sw $t4, 15912($t9)
	sw $t0, 16424($t9)

	#Column10
	sw $t0, 4132($t9)
	sw $t1, 5156($t9)
	sw $t1, 5668($t9)
	sw $t1, 6180($t9)
	sw $t1, 6692($t9)
	sw $t1, 7204($t9)
	sw $t1, 7716($t9)
	sw $t1, 8228($t9)
	sw $t1, 8740($t9)
	sw $t1, 9252($t9)
	sw $t1, 9764($t9)
	sw $t1, 10276($t9)
	sw $t1, 10788($t9)
	sw $t1, 11300($t9)
	sw $t1, 11812($t9)
	sw $t4, 15908($t9)
	sw $t0, 16420($t9)

	#Column9
	sw $t1, 8224($t9)
	sw $t1, 8736($t9)
	sw $t1, 9248($t9)
	sw $t1, 9760($t9)
	sw $t1, 10272($t9)
	sw $t1, 10784($t9)
	sw $t1, 11296($t9)
	sw $t1, 11808($t9)
	sw $t1, 12320($t9)
	sw $t3, 13856($t9)
	sw $t4, 15904($t9)
	sw $t0, 16416($t9)

	#Column8
	sw $t1, 8732($t9)
	sw $t1, 9244($t9)
	sw $t1, 9756($t9)
	sw $t1, 10268($t9)
	sw $t1, 10780($t9)
	sw $t1, 11292($t9)
	sw $t1, 11804($t9)
	sw $t1, 12316($t9)
	sw $t1, 12828($t9)
	sw $t1, 13340($t9)
	sw $t3, 13852($t9)
	sw $t5, 14876($t9)
	sw $t5, 15388($t9)
	sw $t4, 15900($t9)
	sw $t0, 16412($t9)

	#Column7
	sw $t1, 9240($t9)
	sw $t1, 9752($t9)
	sw $t1, 10264($t9)
	sw $t1, 10776($t9)
	sw $t1, 11288($t9)
	sw $t1, 11800($t9)
	sw $t1, 12312($t9)
	sw $t1, 12824($t9)
	sw $t5, 14872($t9)
	sw $t2, 15384($t9)
	sw $t4, 15896($t9)
	sw $t0, 16408($t9)

	#Column6
	sw $t1, 8724($t9)
	sw $t1, 9236($t9)
	sw $t1, 9748($t9)
	sw $t1, 10260($t9)
	sw $t1, 10772($t9)
	sw $t1, 11284($t9)
	sw $t4, 15892($t9)
	sw $t0, 16404($t9)
	sw $t0, 16916($t9)

	#Column5
	sw $t1, 8208($t9)
	sw $t1, 8720($t9)
	sw $t1, 9232($t9)
	sw $t1, 9744($t9)
	sw $t1, 10256($t9)
	sw $t1, 10768($t9)
	sw $t4, 16400($t9)
	sw $t0, 16912($t9)
	
	addi $t0, $zero, 0
	
	delayDino2W:
	beq $t0, 20000, exitDino2W
	addi $t0, $t0, 1
	j delayDino2W
	
	exitDino2W:
	jr $ra
	
dino2:
	addi $s0, $s0, -1
	lui $t9, 0x1001
	#COLOR PALETTE
    addi $t0, $zero, 0X00FF00DA #Pink
   	addi $t1, $zero, 0X00535454 #Black
	addi $t2, $zero, 0X00FFFFFF #White
	addi $t3, $zero, 0X00903918 #Brown
	addi $t4, $zero, 0X00B00598 #Dark Pink
	addi $t5, $zero, 0X000100FF #Blue

	#Column16
	sw $t1, 5692($t9)
	sw $t1, 6204($t9)
	sw $t1, 6716($t9)
	sw $t4, 16444($t9)
	sw $t0, 16956($t9)

	#Column15
	sw $t1, 5176($t9)
	sw $t1, 5688($t9)
	sw $t1, 6200($t9)
	sw $t1, 6712($t9)
	sw $t1, 7736($t9)
	sw $t1, 9272($t9)
	sw $t1, 9784($t9)
	sw $t4, 15928($t9)
	sw $t0, 16440($t9)
	sw $t0, 16952($t9)

	#Column14
	sw $t1, 5172($t9)
	sw $t1, 5684($t9)
	sw $t1, 6196($t9)
	sw $t1, 6708($t9)
	sw $t1, 7732($t9)
	sw $t1, 9268($t9)
	sw $t5, 14900($t9)
	sw $t5, 15412($t9)
	sw $t4, 15924($t9)
	sw $t0, 16436($t9)

	#Column13
	sw $t0, 4144($t9)
	sw $t1, 5168($t9)
	sw $t1, 5680($t9)
	sw $t1, 6192($t9)
	sw $t1, 6704($t9)
	sw $t1, 7216($t9)
	sw $t1, 7728($t9)
	sw $t1, 8240($t9)
	sw $t1, 8752($t9)
	sw $t1, 9264($t9)
	sw $t1, 9776($t9)
	sw $t1, 10288($t9)
	sw $t1, 10800($t9)
	sw $t1, 11312($t9)
	sw $t1, 11824($t9)
	sw $t1, 12336($t9)
	sw $t1, 12848($t9)
	sw $t3, 13872($t9)
	sw $t5, 14896($t9)
	sw $t2, 15408($t9)
	sw $t4, 15920($t9)
	sw $t0, 16432($t9)

	#Column12
	sw $t0, 3628($t9)
	sw $t0, 4140($t9)
	sw $t1, 5164($t9)
	sw $t2, 5676($t9)
	sw $t1, 6188($t9)
	sw $t1, 6700($t9)
	sw $t1, 7212($t9)
	sw $t1, 7724($t9)
	sw $t1, 8236($t9)
	sw $t1, 8748($t9)
	sw $t1, 9260($t9)
	sw $t1, 9772($t9)
	sw $t1, 10284($t9)
	sw $t1, 10796($t9)
	sw $t1, 11308($t9)
	sw $t1, 11820($t9)
	sw $t1, 12332($t9)
	sw $t1, 12844($t9)
	sw $t1, 13356($t9)
	sw $t3, 13868($t9)
	sw $t4, 15916($t9)
	sw $t0, 16428($t9)

	#Column11
	sw $t0, 3624($t9)
	sw $t0, 4136($t9)
	sw $t1, 5160($t9)
	sw $t1, 5672($t9)
	sw $t1, 6184($t9)
	sw $t1, 6696($t9)
	sw $t1, 7208($t9)
	sw $t1, 7720($t9)
	sw $t1, 8232($t9)
	sw $t1, 8744($t9)
	sw $t1, 9256($t9)
	sw $t1, 9768($t9)
	sw $t1, 10280($t9)
	sw $t1, 10792($t9)
	sw $t1, 11304($t9)
	sw $t1, 11816($t9)
	sw $t1, 12328($t9)
	sw $t4, 15912($t9)
	sw $t0, 16424($t9)

	#Column10
	sw $t0, 4132($t9)
	sw $t1, 5156($t9)
	sw $t1, 5668($t9)
	sw $t1, 6180($t9)
	sw $t1, 6692($t9)
	sw $t1, 7204($t9)
	sw $t1, 7716($t9)
	sw $t1, 8228($t9)
	sw $t1, 8740($t9)
	sw $t1, 9252($t9)
	sw $t1, 9764($t9)
	sw $t1, 10276($t9)
	sw $t1, 10788($t9)
	sw $t1, 11300($t9)
	sw $t1, 11812($t9)
	sw $t4, 15908($t9)
	sw $t0, 16420($t9)

	#Column9
	sw $t1, 8224($t9)
	sw $t1, 8736($t9)
	sw $t1, 9248($t9)
	sw $t1, 9760($t9)
	sw $t1, 10272($t9)
	sw $t1, 10784($t9)
	sw $t1, 11296($t9)
	sw $t1, 11808($t9)
	sw $t1, 12320($t9)
	sw $t3, 13856($t9)
	sw $t0, 15904($t9)
	sw $t0, 16416($t9)

	#Column8
	sw $t1, 8732($t9)
	sw $t1, 9244($t9)
	sw $t1, 9756($t9)
	sw $t1, 10268($t9)
	sw $t1, 10780($t9)
	sw $t1, 11292($t9)
	sw $t1, 11804($t9)
	sw $t1, 12316($t9)
	sw $t1, 12828($t9)
	sw $t1, 13340($t9)
	sw $t3, 13852($t9)
	sw $t5, 14876($t9)
	sw $t5, 15388($t9)
	sw $t4, 15900($t9)
	sw $t0, 16412($t9)

	#Column7
	sw $t1, 9240($t9)
	sw $t1, 9752($t9)
	sw $t1, 10264($t9)
	sw $t1, 10776($t9)
	sw $t1, 11288($t9)
	sw $t1, 11800($t9)
	sw $t1, 12312($t9)
	sw $t1, 12824($t9)
	sw $t5, 14872($t9)
	sw $t2, 15384($t9)
	sw $t4, 15896($t9)
	sw $t0, 16408($t9)

	#Column6
	sw $t1, 8724($t9)
	sw $t1, 9236($t9)
	sw $t1, 9748($t9)
	sw $t1, 10260($t9)
	sw $t1, 10772($t9)
	sw $t1, 11284($t9)
	sw $t4, 15892($t9)
	sw $t0, 16404($t9)
	sw $t0, 16916($t9)

	#Column5
	sw $t1, 8208($t9)
	sw $t1, 8720($t9)
	sw $t1, 9232($t9)
	sw $t1, 9744($t9)
	sw $t1, 10256($t9)
	sw $t1, 10768($t9)
	sw $t4, 16400($t9)
	sw $t0, 16912($t9)

	addi $t0, $zero, 0
	
	delayDino2:
	beq $t0, 20000, exitDino2
	addi $t0, $t0, 1
	j delayDino2
	
	exitDino2:
	jr $ra
	
gameOver:
	addi $v0, $zero, 10
	syscall
