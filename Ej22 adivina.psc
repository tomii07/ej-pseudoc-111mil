Proceso adivina
	
	Escribir "ADIVINE EL NUMERO!!";
	Escribir "TIENE 10 INTENTOS, SUERTE!";
	
	nro_encontrado;
	
FinProceso

Funcion nro_encontrado
	
	Definir rand Como Entero;
	
	rand <- azar(101) + 1;
	
	Si adivinar(rand) = nro Entonces
		Escribir "NUMERO ENCONTRADO! ", rand;
	FinSi
	
FinFuncion

Funcion nro <- adivinar(rand)
	
	Definir nro,int Como Entero;
	Definir new Como Caracter;
	int <- 10;
	
	Escribir "Ingrese un numero (de 1 a 100): ";
	Leer nro;
	
	Mientras rand != nro Y int > 1 Hacer
		Si nro > rand Entonces
			Escribir "El numero buscado es menor...";
		SiNo
			Escribir "El numero buscado es mayor...";
		FinSi
		
		int <- int - 1;
		
		Escribir "Le quedan ", int, " intentos, pruebe de nuevo: ";
		Leer nro;
	FinMientras
	
	Si nro = rand Entonces
		Escribir "FELICITACIONES, NUMERO ENCONTRADO!!";
	SiNo
		Escribir "GAME OVER... Quiere intentarlo una vez más?[S/N]: ";
		Leer new;
		
		Si new = 'S' O new = 's' Entonces
			nro_encontrado;
		SiNo
			Escribir "Bye...";
		FinSi
	FinSi
FinFuncion
	