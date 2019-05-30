Proceso esPrimo
	Definir p Como Entero;
	Escribir "Ingrese un numero: ";
	Leer p;
	Si primo(p) Entonces
		//es <- verdadero
		Escribir "Es primo";
	SiNo
		//es <- falso
		Escribir "No es primo";
	FinSi
FinProceso
//-------------------------------//
Funcion es <- primo(p)
	Definir es Como Logico;
	Definir rtado Como Real;
	Si p < 0 Entonces
		p <- p * (-1);
	FinSi
	rtado <- rc(p);
	rtado <- trunc(rtado);
	Si p = 0 O p = 1 Entonces 
		Es <- Falso;
	SiNo
		Si p = 2 O p = 3 Entonces
			es <- Verdadero;
		SiNo
			Repetir
				Si (p % rtado) = 0 Entonces
					es <- Falso;
				SiNo
					es <- Verdadero;
				FinSi
				rtado <- rtado - 1;
			Hasta Que (p + 1) % rtado  = 0
		FinSi
	FinSi
FinFuncion

//NO SE COMO FUNCIONA! VER EL EJERCICIO SIGUIENTE (esPrimo MEJORADO).