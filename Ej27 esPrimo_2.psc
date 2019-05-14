Proceso esPrimo_2
	
	Definir p Como Entero;
	
	Escribir "Ingrese un numero: ";
	Leer p;
	
	Si p < 0 Entonces
		p <- abs(p);
	FinSi
	
	Si primo(p) Entonces
		Escribir "Es primo!";
	SiNo
		Escribir "No es primo...";
	FinSi
	
FinProceso

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

Funcion es <- primo(p)
	
	Definir es Como Logico;
	
	//Un numero primo siempre va a tener 2 restos iguales a 0, uno es por si mismo y otro es por 1...
	Si num(p) = 2 Entonces
		es <- Verdadero;
	SiNo
		es <- Falso;
	FinSi
	
FinFuncion

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

Funcion b <- num(p)
	
	Definir i,b Como Entero;
	
	i <- p;
	b <- 0;
	
	//Considero a b como indicador para la cantidad de restos iguales a 0 que tiene un numero
	//b = 2 para que el numero ingresado sea primo
	//Divido al numero ingresado por todos los numeros positivos anteriores a dicho numero
	
	Repetir
		
		Si p % i = 0 Entonces
			b <- b + 1;
		FinSi

		Si b > 2 Entonces
			i <- 1;
		FinSi
		
		i <- i - 1;
		
	Hasta Que i = 0;
	
FinFuncion
	