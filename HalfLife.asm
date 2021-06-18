	.data
	Stringa_1: .asciiz "Ti trovi nel centro di ricerca Black Mesa. Al momento c'è stato un disastro ed è in corso l'evacuazione. Alcune creature si stanno avvicinando, è il momento di fuggire! cosa fai? <opzioni> : \n (1) Prendo il piede di porco a terra \n (2) Apro la porta davanti a me \n \n Numero scelta: "
	Stringa_2: .asciiz "Hai ottenuto il piede di porco! \n \n" 
	Stringa_3: .asciiz "La porta davanti a te è bloccata, ma usando il piede di porco riesci a forzarla e a passare. Dopo il tuo passaggio la porta si richiude. \n \n  Ti ritrovi in un corridoio abbastanza stretto, in fondo vi è una porta già aperta, per terra vi sono un paio di cadaveri del personale di sicurezza. \n Cosa fai? <opzioni> : \n (1) Corro fino in fondo e attraverso la porta aperta \n (2) Perlustro i dintorni \n \n Numero scelta: "
	Stringa_err: .asciiz "La porta sembra essere bloccata, ma con il giusto attrezzo potresti riuscire a forzarla. Le creature sono ormai a contatto e sei morto indifeso. \n Game Over."
	Stringa_4: .asciiz "Hai ottenuto un caricatore per pistole e 1 cura medica! \n \n"
	Stringa_5: .asciiz "Proseguendo per la stanza successiva... \n Ci sono alcuni sistemi elettrici in fiamme e altri corpi ammassati in un angolo. Inoltre, vi è un'ascensore che sembra essere funzionante. \n Cosa fai? <opzioni> : \n (1) Mi dirigo verso l'ascensore \n (2) Perlustro nella stanza \n (3) Visualizza il mio inventario\n \n Numero scelta: "
	headcrab: .asciiz "Rovistando tra i cadaveri ti imbatti in un parassita headcrab! \n Cosa fai? <opzioni> : \n (1) Combatto. \n (2) Fuggo verso l'ascensore. \n \n Numero scelta: "
	fuga_headcrab: .asciiz "Buttandoci sopra un cadavere e dunque rallentando il parassita nemico, sei riuscito a guadagnare abbastanza tempo per raggiungere l'ascensore e far chiudere le porte. \n \n"
	
	elevator: .asciiz "Passi alcuni secondi prima di raggiungere l'ultimo piano disponibile, gli ultimi 2 per raggiungere la superficie e uscire da Black Mesa dovrai farli a piedi. Uscito hai a disposizione un corridoio che prosegue verso le scale. Noti in lontananza qualcosa(nelle vicinanze delle scale), forse un uomo accasciato. \n Cosa fai? <opzioni> : \n (1) Procedo diritto per il corridoio per raggiungere le scale \n (2) Esploro il corridoio di sinistra. \n (3) visualizza il mio inventario. \n \n Numero scelta: "
	
	cura: .asciiz "I tuoi punti salute non sono al massimo, vuoi curarti? (ripristinerai 6 punti ma non puoi eccedere il massimo, 12) \n Cosa fai? <opzioni> : \n (1) mi curo \n (2) proseguo senza curarmi. \n \n Numero scelta: "
	hp_left: .asciiz "Ti sono rimasti precisamente "
	hp: .asciiz " punti salute. \n \n"
	
	zombie: .asciiz "Avvicinandoti alle scale, l'uomo, prima accasciato, si è ora alzato e cerca di attaccarti. Impossibile da evitare \n"
	zombie_2: .asciiz " Che arma usi? <opzioni> : \n (1) uso il piede di porco \n (2) uso la pistola. \n \n Numero scelta: "
	pistola: .asciiz "Esplorando una delle stanze sei riuscito a trovare una nuova arma. \n \n Hai ottenuto una pistola! 7 proiettili all'interno. \n \n"
	
	piano2: .asciiz " Sei riuscito a salire le scale e sei al piano superiore, ormai poco distante dal tetto che ti condurrà alla libertà. A 10 metri di distanza vi è un altro essere dalle dubbie intenzioni amichevoli, dietro di lui una porta semi-aperta. \n Cosa fai? <opzioni> : \n (1) Uccido lo zombie ed entro \n (2) Proseguo senza farmi notare e salgo al piano successivo \n (3) visualizza il mio inventario. \n \n Numero scelta: "
	
	zombie_gun: .asciiz "Con l'uso della pistola dalla distanza, sei riuscito ad abbattere il nemico senza che lui riuscisse ad avvicinarsi. \n La pistola è ora scarica. \n \n"
	
	empty_room: .asciiz "Dopo aver ucciso lo zombie ed essere entrato nella stanza, ti accorgi che al suo interno non vi è niente di utile. \n \n "
	
	pianoFinale: .asciiz "Sei all'ultimo piano. Rimane solo un lungo corridoio da percorrere, la porta in fondo ti porterà all'esterno. \n Cosa fai? <opzioni> : \n (1) Corro verso la porta e la apro. \n (2) perlustro la zona in cerca di oggetti utili. \n (3) visualizza il mio inventario. \n \n Numero scelta:  " 
	
	zombie_final: .asciiz " Mentre ti avvicini alla porta per aprirla, da un angolo sbuca fuori un altro zombie e cerca di attaccarti! \n \n "
	
	Ending: .asciiz " Aprendo l'ultima porta, ti ritrovi all'esterno. Complimenti, sei riuscito a fuggire da Black Mesa! "
	
	cura2: .asciiz "Perlustrando i dintorni hai trovato una cura medica! \n"
	reload: .asciiz "La pistola è stata ricaricata utilizzando il caricatore all'interno dell'inventario. \n \n"
	morte: .asciiz " \n \n Sei morto... Game Over."
	vittoria: .asciiz " \n \n Hai sconfitto il nemico, puoi proseguire. \n \n "
	vuoto_I: .asciiz " - vuoto \n"
	NoCura: .asciiz "Non possiedi una cura medica nell'inventario!! \n \n"
	pistola_I: .asciiz " - Pistola \n"
	pistolaScarica_I: .asciiz " - Pistola(scarica) \n "
	crowbar_I: .asciiz " - Piede di porco \n"
	medikit_I: .asciiz " - cura medica \n"
	ammo_I: .asciiz " - Caricatore per pistola \n"
	.align 2
	array_inventario: .space 16
	

	
	
	
	.text
	.globl main
main:	
	li $s0,12           #punti salute utente
	li $s1,3            #punti salute headcrab
	li $s2,7            #punti salute zombie
	li $s3,3            #danni piede di porco
	li $s4,5            #danni pistola
	li $t4,2            #danni headcrab
	li $s6,4            #danni zombie
	li $s7,6            #cura medica
	
			
	la $s5,array_inventario    #in s5 salvo l'indirizzo dell'array che conterrà l'inventario del giocatore
	
	la $a0,vuoto_I
	li $a1,0	
	jal setta_inventario       #set degli spazi dell'inventario con la stringa vuoto_I(si andranno poi a sostituire man mano che si trovano oggetti)
	
	li $v0,4
	la $a0,Stringa_1
	syscall                #print_string
	li $v0,5
	syscall                #read_int
	bne $v0,1,stop
	jal crowbar            #salta a crowbar salva PC in $ra
	
	li $v0,4
	la $a0,Stringa_3
	syscall                #print_string  
	li $v0,5
	syscall

corridoio:
		
	beq $v0,1,stanza_1
	li $v0,4
	la $a0,Stringa_4
	syscall                #print_string
	la $t1,medikit_I
	sw $t1,4($s5)          #salvo nell'inventario la cura medica in posizione [1]
	#addi $t3,$t3,4
	la $t1,ammo_I
	sw $t1,8($s5)          #salvo caricatore per pistola in posizione [2]
	#addi $t3,$t3,4
	li $t1,0               #reset $t1
stanza_1:
	li $v0,4
	la $a0,Stringa_5
	syscall                #print_string
	li $v0,5
	syscall                #read_int
	addi $t2,$zero,1       #carico valore 1 in t2 per il ritorno in caso si scelga inventario
	beq $v0,3,inventario   #salta alla funzione inventario con la scelta 3
	li $t2,0
	beq $v0,1,ascensore    #salta all'ascensore con la scelta 1
	beq $v0,2,Headcrab     #salta a headcrab con la scelta 2
	Headcrab:
		li $v0,4
		la $a0,headcrab
		syscall
		li $v0,5
		syscall
		beq $v0,2,ascensore_fuga
		
		#set dei parametri per chiamata a procedura "combatti"
		
		move $a0,$s0       #punti salute utente
		move $a1,$s1       #punti salute headcrab
		move $a2,$s3       #piede di porco
		move $a3,$t4       #danni headcrab
		jal combatti
		add $s0,$v0,$zero
		li $t2,2           #carico valore 2 in t2 per il ritorno in caso di salto a cura
		bne $s0,12,Cura    #salta a cura se $s0 è diverso da 12, quindi se sono stati tolti punti salute
		j ascensore
		
	ascensore:
		li $v0,4
		la $a0,elevator
		syscall
		li $t2,2                      #carico valore 2 in t2 per il ritorno in caso si scelga inventario
		li $v0,5
		syscall
		beq $v0,1,scale
		beq $v0,2,corridoio_sx
		beq $v0,3,inventario
		
		scale:
			la $t4, pistola_I
			lw $t5,12($s5)
			beq $t4,$t5,scale_2   #se si possiedono entrambe le armi, viene richiesto quale si voglia usare, altrimenti di default crowbar
			li $v0,4
			la $a0,zombie
			syscall               #print_string
		zombie_crowbar:
			
			#settaggio dei parametri per chiamare combatti
			
			move $a0,$s0   #salute utente
			move $a1,$s2   #salute zombie 
			move $a2,$s3   #piede di porco
			move $a3,$s6   #danni zombie 
			jal combatti
			
			add $s0,$v0,$zero  #in $v0 è contenuto il valore dei punti saluti post-battaglia, il valore di $s0 viene sostituito con esso

			li $t2,4           
			bne $s0,12,Cura
			beq $t6,2,stanza_vuota
			beq $t6,3,Finale
			j piano_sup
			
		scale_2:
			li $v0,4
			la $a0,zombie
			syscall           #print_string
			la $a0,zombie_2
			syscall
			li $v0,5
			syscall           #read_int
			beq $v0,1,zombie_crowbar
			
			#in caso di scelta della pistola, settaggio dei parametri per chiamare combatti
			
			move $a0,$s0    #salute utente
			move $a1,$s2    #salute zombie 
			move $a2,$s4    #pistola 
			move $a3,$s6    #danni zombie 
			jal combatti
			add $s0,$v0,$zero
			li $t2,4
			bne $s0,12,Cura
			j piano_sup
			
		corridoio_sx:
			li $v0,4
			la $a0,pistola
			syscall
			la $t1,pistola_I
			sw $t1,12($s5)          #salvo  pistola in posizione [3]
			#addi $t3,$zero,16      #valore n per il ciclo che serve a visualizzare l'inventario
			li $t1,0
			j scale_2
		
			piano_sup:
				li $v0,4
				la $a0,piano2
				syscall         #print_string
				li $v0,5
				syscall         #read_int
				li $t2,4
				beq $v0,1,zombie_3
				beq $v0,2,last_piano
				beq $v0,3,inventario
				
				zombie_3:
					la $t5,pistola_I
					lw $t6,12($s5)
					beq $t5,$t6,zombie_shot     #controllo sul possesso dell'oggetto pistola 
					j zombie_crowbar
					
					zombie_shot:
						li $v0,4
						la $a0,zombie_2
						syscall             #print_string
						
						li $v0,5
						syscall             #read_int
						
						li $t6,2            #se salta a zombie_crowbar, poi salta a stanza_vuota
						bne $v0,2,zombie_crowbar
						li $v0,4
						la $a0,zombie_gun
						syscall            #print_string
						
						lw $t5,8($s5)
						la $t6,ammo_I
						beq $t5,$t6,ricarica         #controllo sul possesso dell'oggetto caricatore
						la $t5,pistolaScarica_I      
						sw $t5,12($s5)
						j last_piano
						ricarica:
							li $v0,4
							la $a0,reload
							syscall              #print_string
							la $t5,vuoto_I
							sw $t5,8($s5)
						stanza_vuota:
							li $v0,4
							la $a0,empty_room
							syscall              #print_string
					 
				
			
			last_piano:
				li $v0,4
				la $a0,pianoFinale
				syscall             #print_string
				li $v0,5
				syscall             #read_int
				li $t2,5
				li $t1,0
				beq $v0,1,zombie_finale
				beq $v0,3,inventario
				
				la $t1,medikit_I
				sw $t1,4($s5)       #salvo cura medica in posizione [1]
				li $v0,4
				la $a0,cura2
				syscall             #print_string
				bne $s0,12,Cura
				
				zombie_finale:
					li $v0,4
					la $a0,zombie_final
					syscall
					la $t1,pistola_I
					lw $t5,12($s5)
					li $t6,3                    #se salta a zombie_crowbar(pistola scarica), poi salta a Finale
					bne $t1,$t5,zombie_crowbar
					li $v0,4
					la $a0,zombie_2
					syscall                     #print_string
					li $v0,5
					syscall                     #read_int
					beq $v0,1,zombie_crowbar
					
					#in caso di scelta della pistola, settaggio dei parametri per chiamare combatti
					
					move $a0,$s0    #salute utente
					move $a1,$s2    #salute zombie 
					move $a2,$s4    #pistola 
					move $a3,$s6    #danni zombie 
					jal combatti
					
					Finale:
						li $v0,4
						la $a0,Ending
						syscall         #print_string
						j End 
						
				
	
crowbar:
	li $v0,4
	la $a0,Stringa_2      
	syscall                #print_string
	la $t1,crowbar_I
	sw $t1,0($s5)          #salvo nell'inventario il piede di porco in posizione [0]
	#addi $t3,$t3,4
	li $t1,0               #reset $t1
	jr $ra
stop:
	li $v0,4
	la $a0,Stringa_err
	syscall                #print_string
	jr $ra
	
setta_inventario:
	beq $a1,16,resetta        #for(i = 0; i <= 16;i++)
	sw $a0,0($s5)
	addi $s5,$s5,4
	addi $a1,$a1,4
	j setta_inventario
	resetta:
		beq $a1,0,back
		subu $s5,$s5,4
		subu $a1,$a1,4
		j resetta
		back:
			jr $ra

inventario:
	beq $t1,16,reset_arrayInventario      #for(i = 0; i <= 16;i++)
	li $v0,4					
	lw $a0,0($s5)        				
	syscall
	addi $s5,$s5,4
	addi $t1,$t1,4
	j inventario
	reset_arrayInventario:
			beq $t1,0,ritorno
			subu $s5,$s5,4
			subu $t1,$t1,4
			j reset_arrayInventario
			ritorno:
				beq $t2,1,stanza_1    #se in t2 è stato caricato 1, inventario è stato chiamato da stanza_1, dunque ritorna li
				beq $t2,2,ascensore   #se in t2 è stato caricato 2, inventario/cura è stato chiamato da ascensore/headcrab, dunque ritorna li
				beq $t2,4,piano_sup   #se in t2 è stato caricato 4, cura è chiamata da zombie/scale, dunque ritorna li(oppure inventario da piano_sup)
				beq $t2,5,last_piano  #se in t2 è stato caricato 5, inventario è chiamato da last_piano, ritorna li
combatti:
	#parametri: $a0 i punti salute utente, $a1 i punti salute del nemico, $a2 l'arma usata dall'utente, $a3 i danni che può causare il nemico
	addi $sp, $sp, -4
	sw $s0, 4($sp)
	fight:
		sub $a0,$a0,$a3
		blt $a0,0,fine_combatti
		sub $a1,$a1,$a2
		blt $a1,0,fine_combatti
	
		j fight
		fine_combatti:
			blt $a0,0,game_over
			add $s0,$a0,$zero
			li $v0,4
			la $a0,vittoria
			syscall
			add $v0,$s0,$zero
			#ripristino i registri 'S'
			lw $s0,4($sp)
			addi $sp,$sp,4
			jr $ra
Cura:
	li $v0,4
	la $a0,hp_left
	syscall          #print_string
	li $v0,1
	add $a0,$s0,$zero
	syscall          #print_int	
	li $v0,4
	la $a0,hp
	syscall          #print_string
	li $v0,4
	la $a0,cura
	syscall          #print_string
	li $v0,5
	syscall          #read_int
	beq $v0,1,cura_Si
	j ritorno 
	cura_Si:
		la $t6,medikit_I
		lw $t5,4($s5)
		bne $t6,$t5,cura_No          #controllo sul possesso dell'oggetto cura
		
		add $s0,$s0,$s7
		la $t6,vuoto_I
		sw $t6,4($s5)
		bgt $s0,12,reset_eccesso     #controllo sull'eccesso di punti salute
		j ritorno
		reset_eccesso:
			beq $s0,10,ritorno
			subu $s0,$s0,1
			j reset_eccesso
	cura_No:
		li $v0,4
		la $a0,NoCura
		syscall                      #print_string
		j ritorno
					
ascensore_fuga:
	li $v0,4
	la $a0,fuga_headcrab
	syscall                              #print_string
	j ascensore
game_over:
	li $v0,4
	la $a0,morte
	syscall                              #print_string
End:
	li $v0,10
	syscall                #exit
