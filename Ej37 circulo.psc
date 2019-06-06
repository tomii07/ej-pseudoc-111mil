Proceso circulo
	
	Definir r Como Entero;
	
	Escribir "Ingrese radio: ";
	Leer r;
	
	circle_constructor(r);
	
FinProceso

SubProceso circle_constructor(r)
	
	Definir i,j como Entero;
	
	j <- r;
	i <- -r;
	
	Mientras j >= -r Hacer
		Mientras i <= r Hacer
			Si (i*i)+ (j*j) < (r*r) Entonces
				Escribir "#" Sin Saltar;
			SiNo
				Escribir " " Sin Saltar;
			FinSi
			i <- i + 1;
		FinMientras
		Escribir " ";
		j <- j - 1;
		i <- -r;
	FinMientras
	

FinSubProceso
