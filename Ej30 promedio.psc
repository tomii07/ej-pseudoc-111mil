Proceso promedio
	Definir x,nro,total,aux Como Real;
	Escribir "Ingrese la cantidad de numeros a promediar: ";
	Leer x;
	aux <- x;
	total <- 0;
	Repetir
		Escribir "Ingrese el numero ",x;
		Leer nro;
		total <- total + nro;
		x <- x - 1;
	Hasta Que x = 0
	total <- total / aux;
	Escribir total;
FinProceso