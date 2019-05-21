Proceso piedra_papel_tijera
	Definir game,simpl como caracter;
    simpl <- 'simple';
	Escribir "1. Ingrese :",simpl,", para jugar una partida";
	Escribir "2. Ingrese un numero para jugar el mejor de... ";
	Leer game;
	Si game = simpl Entonces
		simple_match;
	SiNo
		turns_match(game);
	FinSi
FinProceso
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion simple_match
	Definir jugador,jugador2 Como Caracter;
	Escribir "PARTIDA SIMPLE!";
	Escribir "Tu eleccion? [piedra ; papel ; tijera]: ";
	Leer jugador;
	jugador2 <- cpu; //FUNCION
	Escribir "Mi eleccion ",jugador2;
	Escribir resultado(jugador,jugador2);
	Escribir jugar(jugador,jugador2);
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion turns_match(game)
	Definir i Como Entero;	
	Definir jugador,jugador2 Como Caracter;
	i <- ConvertirANumero(game); 
	Escribir "PARTIDA AL MEJOR DE ",game;
	Repetir 
		Escribir "Turno ",i;
		Escribir "Tu eleccion? [piedra ; papel ; tijera]: ";
		Leer jugador;
		jugador2 <- cpu; //FUNCION
		Escribir "Mi eleccion: ",jugador2;
		Escribir resultado(jugador,jugador2);
		Escribir jugar(jugador,jugador2);
		i <- i - 1; 
	Hasta Que i = 0
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion x <- jugar(jugador,jugador2)
	Definir x Como Caracter;
	Si jugador = jugador2 Entonces
		x <- 'EMPATE!';
	FinSi
	Si jugador <> jugador2 Entonces
		//Recorro las posibilidades en las que el usuario gana...
		Si (jugador = 'piedra' Y jugador2 = 'tijera') O (jugador = 'tijera' Y jugador2 = 'papel') O (jugador = 'papel' Y jugador2 = 'piedra') Entonces
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
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion x <- resultado(jugador,jugador2)
	Definir x Como Caracter;
	Si (jugador = 'piedra' Y jugador2 = 'tijera') O (jugador2 = 'piedra' Y jugador = 'tijera')  Entonces
		x <- 'Piedra aplasta tijera!';
	FinSi
	Si (jugador = 'tijera' Y jugador2 = 'papel') O (jugador2 = 'tijera' Y jugador = 'papel') Entonces
		x <- 'Tijera corta papel!';
	FinSi
	Si (jugador = 'papel' Y jugador2 = 'piedra') O (jugador2 = 'papel' Y jugador = 'piedra') Entonces
		x <- 'Papel envuelve piedra!';
	FinSi
FinFuncion
	