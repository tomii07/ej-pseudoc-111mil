Proceso dec_bin
	
	Definir dec Como Real;
	
	Escribir "Ingrese un numero para convertilo a binario: ";
	Leer dec;
	
	Si dec = 0 Entonces
		Escribir '0';
	SiNo
		Escribir conversion(dec);
	FinSi
	
FinProceso

Funcion nro <- conversion(dec)
	
	Definir bin,aux,j,i Como Entero;
	Definir nro Como Caracter;
	
	nro <- "";

	Mientras dec > 0 Hacer
		bin <- dec % 2;
		
		Si bin = 1 Entonces
			nro <- Concatenar('1',nro);
		SiNo
			nro <- Concatenar('0',nro);
		FinSi
			
		dec <- dec / 2;
		dec <- trunc(dec);
	
	FinMientras

FinFuncion