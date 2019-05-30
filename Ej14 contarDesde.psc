Proceso contarDesde
	Definir a Como Entero;
	Escribir "PROGRAMA CONTAR DESDE CIERTO NUMERO HASTA CERO!";
	Escribir "Ingrese un numero para contar desde: ";
	Leer a;
	Si a > 0 Entonces
		Mientras (a >= 0) Hacer
			Escribir a," " Sin Saltar;
			a <- a - 1 ;
		FinMientras
	SiNo 
		Mientras a <= 0 Hacer
		Escribir a," " Sin Saltar;
		a <- a + 1;	
	FinMientras
	FinSi
FinProceso
