Proceso dec_bin
	Definir dec Como Real;
	Escribir "PROGRAMA CONVERSION DECIMAL A BINARIO!";
	Escribir "Ingrese un numero: ";
	Leer dec;
	Si dec = 0 Entonces
		Escribir '0d';
	SiNo
		Escribir dec,"d"," ---> ",conversion(dec),"b";
	FinSi
FinProceso
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
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