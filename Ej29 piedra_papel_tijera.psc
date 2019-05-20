Proceso piedra_papel_tijera
	Definir game,simpl,us,b como caracter;
	Definir i como entero;
	simpl <- 'simple';
	Escribir "1. Ingrese :",simpl,", para jugar una partida";
	Escribir "2. Ingrese un numero para jugar el mejor de... ";
	Leer game;
	juego(simpl,game);
FinProceso
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion juego(simpl,game)
	Si game = simpl Entonces
		Escribir "PARTIDA SIMPLE!";
		Escribir "Tu eleccion? [piedra ; papel ; tijera]: ";
		Leer us;
		b <- cpu;
		Escribir "Mi eleccion ",b;
		Escribir jugar(us,b);
	SiNo
		i <- ConvertirANumero(game); 
		Escribir "PARTIDA AL MEJOR DE ",game;
		Repetir 
			Escribir "Turno ",i;
			Escribir "Tu eleccion? [piedra ; papel ; tijera]: ";
			Leer us;
			b <- cpu;
			Escribir "Mi eleccion: ",b;
			Escribir jugar(us,b);
			i <- i - 1;
		Hasta Que i = 0
	FinSi
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion x <- jugar(us,b)
	Definir x Como Caracter;
	Si us = b Entonces
		x <- 'EMPATE!';
	FinSi
	Si us <> b Entonces
		//Recorro las posibilidades en las que el usuario gana...
		Si (us = 'piedra' Y b = 'tijera') O (us = 'tijera' Y b = 'papel') O (us = 'papel' Y b = 'piedra') Entonces
			x <- 'Tu ganas...';
		SiNo
			x <- 'YO GANO!!';
		FinSI
	FinSi
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion cpuGame <- cpu
	Definir rand como entero;
	Definir cpuGame como caracter;
	rand <- azar(3);
	Si rand = 0 Entonces
		cpuGame <- 'piedra';
	FinSi
	
	Si rand = 1 Entonces
		cpuGame <- 'papel';
	FinSi
	
	Si rand = 2 Entonces
		cpuGame <- 'tijera';
	FinSi
FinFuncion
	