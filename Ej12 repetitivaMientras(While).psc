Proceso repetitivaMientras
	Definir num, numFin como entero;
	Escribir "TABLA DE MULTIPLICAR DE UN NUMERO!";
	Escribir "Ingrese el numero a multiplicar: ";
	Leer num;
	Escribir "Ingrese el numero hasta el cual lo quiere multiplcar: ";
	Leer numFin;
	Mientras numFin >= 0 Hacer
		Escribir num, " * ",numFin," = ",num * numFin;
		numFin <- numFin - 1;
	FinMientras
FinProceso
