Proceso dec_bin
	
	Definir dec Como Entero;
	
	Escribir "Ingrese un numero para pasarlo a binario: ";
	Leer dec;
	
	conversor(dec);
	
FinProceso

Funcion conversor(dec)
	
	Definir bin,r,i Como Entero;
	
	bin <- 0;
	i <- 0;
	
	Si dec = 1 Entonces
		Escribir "1";
	FinSi
	
	Repetir
		
		r <- dec % 2;
		bin <- bin + (10 ^ i) * r;
		
		i <- i + 1;
		
		dec <- trunc(dec/2);

	Hasta Que dec = 1 
	
	bin <- bin + (10 ^ i);
	
	Escribir bin;
	
FinFuncion
	