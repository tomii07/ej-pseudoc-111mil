Proceso piedra_papel_tijera
	menu;
FinProceso
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
SubProceso menu
	Definir game como caracter;
	DEfinir opc Como Entero;
	Repetir
		Escribir "1. Jugar una partida";
		Escribir "2. Jugar el mejor de...";
		Escribir "0. Salir del programa";
		Leer opc;
		Segun opc hacer
			1:
				simple_match;
			2:
				Escribir "Ingrese la cantidad de partidas a jugar: ";
				Leer game;
				opc <- turns_match(game);
			0:
				cls;
			De Otro Modo:
				Escribir "Opcion ingresada invalida, por favor intente de nuevo...";
		FinSegun
	Hasta Que opc = 0 o opc = 1
FinSubProceso
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion simple_match
	Definir jugador,jugador2 Como Caracter;
	cls;
	Escribir "PARTIDA SIMPLE!";
	Escribir "Tu eleccion? [piedra ; papel ; tijera]: ";
	Leer jugador;
	jugador2 <- cpu; //FUNCION
	Escribir "";
	Escribir "Tu eleccion: ",jugador;
	Escribir "Mi eleccion ",jugador2;
        Si jugador = jugador2 Entonces
                Escribir "EMPATE!!";
        SiNo
	        Si jugar(jugador,jugador2) Entonces
		     Escribir "YO GANO!!";
	        SiNo
		     Escribir "Tu ganas...";
	        FinSi
        FinSi
	cls;
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion x <- turns_match(game)
	Definir i,j,k,x Como Entero;	
	Definir jugador,jugador2 Como Caracter;
	i <- ConvertirANumero(game); 
	j <- 0;
	k <- 0;
	cls;
	Escribir "PARTIDA AL MEJOR DE ",game;
	Escribir "";
	Repetir
		Escribir "Turno ",i;
		Escribir "Marcador: JUGADOR[",k,"] CPU[",j,"]";
		Escribir "Tu eleccion? [piedra ; papel ; tijera]: ";
		Leer jugador;
		jugador2 <- cpu; //FUNCION
		Escribir "";
		Escribir "Tu eleccion: ",jugador;
		Escribir "Mi eleccion: ",jugador2;
		Escribir "";
		Si jugador = jugador2 Entonces
			Escribir 'EMPATE!';
		SiNo
			Si jugar(jugador,jugador2) Entonces
				Escribir 'YO GANO!!';
				j <- j + 1;
			SiNo
				Escribir 'Tu ganas...';
				k <- k + 1;
			FinSi
		FinSi
		i <- i - 1; 
		cls;
	Hasta Que i = 0
	x <- 0;
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion x <- jugar(jugador,jugador2)
	Definir x Como Logico;
		Si jugador <> jugador2 Entonces
			Escribir resultado(jugador,jugador2);
			Si (jugador = 'piedra' Y jugador2 = 'tijera') O (jugador = 'tijera' Y jugador2 = 'papel') O (jugador = 'papel' Y jugador2 = 'piedra') Entonces
				x <- Falso;
			SiNo
				x <- Verdadero;
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
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
SubProceso cls
	Escribir "Presione una tecla para continuar...";
	Esperar Tecla;
	Limpiar Pantalla;
FinSubProceso
