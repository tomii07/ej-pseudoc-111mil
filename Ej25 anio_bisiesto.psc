Proceso anio_bisiesto
	Definir n Como Entero;
	Escribir "El a�o ingresado es BISIESTO...?";
	Escribir "Ingrese un a�o: ";
	Leer n;
	Si bisiesto(n) Entonces
		Escribir n, " ES A�O BISIESTO!";
	SiNo
		Escribir n, " no es a�o bisiesto...";
	FinSi
FinProceso	
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion es <- bisiesto(n)
	Definir es Como Logico;
	Si (n % 4 = 0 Y n % 100 <> 0) O (n % 4 = 0 Y n % 100 = 0 Y n % 400 = 0) Entonces
		es <- Verdadero;
	FinSi
FinFuncion
	