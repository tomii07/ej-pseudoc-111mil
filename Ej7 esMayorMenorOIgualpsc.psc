Proceso esMayorMenorOIgual
	Definir a,b como entero;
	Escribir "DETERMINAR ENTRE DOS NUMEROS ES MAYOR, MENOR O IGUAL!";
	Escribir "Ingrese el primero numero: ";
	Leer a;
	Escribir "Ingrese el segundo numero: ";
	Leer b;
	Si a = b Entonces
		Escribir a, " es igual que ", b;
	SiNo 
		Si a > b Entonces
			Escribir a," es mayor que ",b;
		SiNo
			Escribir a," es menor que ",b;
		FinSi
	FinSi
FinProceso
