Proceso esPrimo_2
	
	Definir p Como Entero;
	
	Escribir "Ingrese un numero: ";
	Leer p;
	
	Si primo(p) Entonces
		Escribir "Es primo!";
	SiNo
		Escribir "No es primo...";
	FinSi
	
FinProceso

Funcion es <- primo(p)
	
	Definir es Como Logico;
	Definir i,b Como Entero;
	
	i <- p;
	b <- 0;
	
	Repetir
		Si p % i = 0 Entonces
			b <- b + 1;
		FinSi
		i <- i - 1;
	Hasta Que i = 0;
	
	Si b = 2 Entonces
		es <- Verdadero;
	SiNo
		es <- Falso;
	FinSi
	
FinFuncion
	