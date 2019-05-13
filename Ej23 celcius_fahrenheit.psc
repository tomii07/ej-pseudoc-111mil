Proceso celcius_fahrenheit
	
	Definir nro como entero;
	
	Mientras 2 = 2 Hacer
	
		Escribir "Elija la opcion de conversion...";
	
		Escribir "1. De Celcius a Fahrenheit";
		Escribir "2. De Fahrenheit a Celcius";
		
		Leer nro;
		
		Si nro = 1 Entonces
			conver_CaF;
		SiNo
			conver_FaC;
		FinSi
		
		Escribir "Presione una tecla para continuar...";
		Esperar  Tecla;
		Limpiar Pantalla;
		
	FinMientras
	
FinProceso

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------//

Funcion conver_CaF
	
	Definir c Como Real;
	
	Escribir "Ingrese la temperatura en celcius que desea convertir: ";
	Leer c;
	
	Escribir c, " °C ---> ", conversion_1(c), " °F";
	
FinFuncion

funcion conver_FaC
	
	Definir f Como Real;
	
	Escribir "Ingrese la temperatura en fahrenheits que desea convertir: ";
	Leer f;
	
	Escribir f, " °F ---> ", conversion_2(f), " °C";

FinFuncion

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------//	

Funcion f <- conversion_1(c)
	
	Definir f Como Real;
	
	f <- (c * 9 / 5) + 32;
	
FinFuncion

Funcion c <- conversion_2(f)
	
	Definir c Como Real;
	
	c <- (f - 32) * 5/9;
	
FinFuncion
	