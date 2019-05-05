Proceso contarDesde
	
	Escribir "Ingrese un numero para contar desde: ";
	Leer a;
	
	Si a > 0 Entonces
		Mientras (a >= 0) Hacer
			Escribir a;
			a <- a - 1 ;
		FinMientras
	SiNo 
		Mientras a <= 0 Hacer
		Escribir a;
		a <- a + 1;	
	FinMientras
	FinSi
	
FinProceso
