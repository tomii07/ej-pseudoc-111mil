Proceso celcius_fahrenheit
	
	Definir nro como entero;
	
	Escribir "Elija la opcion de conversion...";
	
	Escribir "1. De Celcius a Fahrenheit";
	Escribir "2. De Fahrenheit a Celcius";
	
	Leer nro;
	
	Si nro = 1 Entonces
		conver_CaF;
	SiNo
		conver_FaC;
	FinSi

FinProceso

Funcion conver_CaF
	
	Definir c,f Como Real;
	
	Escribir "Ingrese la temperatura en celcius que desea convertir: ";
	Leer c;
	
	f <- (c * 9 / 5) + 32;
	
	Escribir c, " °C ---> ",f, " °F";
	
FinFuncion

funcion conver_FaC
	
	Definir c,f Como Real;
	
	Escribir "Ingrese la temperatura en fahrenheits que desea convertir: ";
	Leer f;
	
	c <- (f - 32) * 5/9;
	
	Escribir f, " °F ---> ",c, " °C";
	
FinFuncion
	