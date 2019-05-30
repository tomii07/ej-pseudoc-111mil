Proceso mayoroMenor
	Definir a,b Como Entero;
	Escribir "Ingrese un numero: ";
	Leer a;
	Escribir "Ingrese un numero: ";
	Leer b;
	Si esMayor(a,b) Entonces
		Escribir a," es mayor que ", b;
	SiNo
		Escribir b," es mayor que ",a;
	FinSi
FinProceso
//------------------------//
Funcion es <- esMayor(a,b)
	Definir es Como Logico;
	es <- (a > b);
FinFuncion
