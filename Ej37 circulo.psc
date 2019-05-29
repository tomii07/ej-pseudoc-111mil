Proceso circulo
	
	Definir d Como Entero;
	
	Escribir "Ingrese diametro: ";
	Leer d;
	
	circle_constructor(d);
	
FinProceso

SubProceso circle_constructor(d)
	
	Definir i,j como Entero;
	Definir aux Como Real;
	
	aux <- trunc(d/2);
	Escribir aux;
	
	Para j <- aux Hasta -aux Con Paso -1 Hacer
		Para i <- -aux Hasta aux Con Paso 1 Hacer
			Escribir "(",i,",",j,"): " Sin Saltar;
			Si (i*i) + (j*j) <= d Entonces
				Escribir '#' Sin Saltar;
				Si i = aux Entonces
					Escribir "";
				FinSi
			SiNo
				Escribir " " Sin Saltar;
				Si i = aux Entonces
					Escribir "";	
				FinSi
			FinSi
		FinPara
	FinPara

FinSubProceso
