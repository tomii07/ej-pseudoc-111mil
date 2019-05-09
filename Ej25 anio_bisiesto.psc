Proceso anio_bisiesto
	
	Definir n Como Entero;
	
	Escribir "Ingrese un año para saber si es bisiesto o no: ";
	Leer n;
	
	Si bisiesto(n) Entonces
		Escribir n, " ES AÑO BISIESTO!";
	SiNo
		Escribir n, " no es año bisiesto...";
	FinSi
	
FinProceso	

Funcion es <- bisiesto(n)
	
	Definir es Como Logico;
	
	Si (n % 4 = 0 Y n % 100 <> 0) O (n % 4 = 0 Y n % 100 = 0 Y n % 400 = 0) Entonces
		es <- Verdadero;
	FinSi
	
FinFuncion
	