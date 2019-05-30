Proceso adivina
	Escribir "ADIVINE EL NUMERO!!";
	Escribir "TIENE 10 INTENTOS, SUERTE!";
	nro_encontrado;
FinProceso

Funcion nro_encontrado
	Definir nro Como Entero;
	Definir rand Como Entero;
	Escribir "Ingrese un numero (de 1 a 100): ";
	Leer nro;
	rand <- azar(101);
	adivinar(rand, nro);
FinFuncion
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion adivinar(rand, nro)
	Definir int Como Entero;
	Definir new Como Caracter;
	int <- 10;
	Mientras rand != nro Y int > 1 Hacer
		Si nro > rand Entonces
			Escribir "El numero buscado es menor...";
			Esperar 1 Segundos;
			Limpiar Pantalla;
		SiNo
			Escribir "El numero buscado es mayor...";
			Esperar 1 Segundos;
			Limpiar Pantalla;
		FinSi
		int <- int - 1;
		Escribir "Le quedan ", int, " intentos, pruebe de nuevo: ";
		Leer nro;
	FinMientras
	Si nro = rand Entonces
		Escribir "FELICITACIONES, NUMERO ENCONTRADO!!";
		cls;
		Escribir "Quiere jugar de nuevo...?[S/N]";
		Leer new;
		Si new = 'S' O new = 's' Entonces
			nro_encontrado;
		SiNo
			Escribir "Bye...";
			cls;
		FinSi
	SiNo
		Escribir "GAME OVER... Quiere intentarlo una vez más?[S/N]: ";
		Leer new;
		Si new = 'S' O new = 's' Entonces
			nro_encontrado;
		SiNo
			Escribir "Bye...";
			cls;
		FinSi
	FinSi
FinFuncion
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
SubProceso cls
	Escribir "Presione una tecla para continuar...";
	Esperar Tecla;
	Limpiar Pantalla;
FinSubProceso
	