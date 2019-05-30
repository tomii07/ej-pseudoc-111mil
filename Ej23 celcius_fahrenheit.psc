Proceso celcius_fahrenheit
	Definir opc como entero;
	Escribir "PROGRAMA DE CONVERSION °C <-> °F";
	Repetir
		Escribir "Elija una opcion de conversion...";
		Escribir "1. De Celcius a Fahrenheit";
		Escribir "2. De Fahrenheit a Celcius";
		EScribir "0. Salir";
		Leer opc;
		Segun opc hacer	
			1:
				cls;
				conver_CaF;
			2:
				cls;
				conver_FaC;
			0:
				Escribir " ";
			De Otro Modo:
				Escribir "Opcion invalida, vuelva a intentarlo...";
		FinSegun
		cls;
	Hasta Que opc = 0
FinProceso
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion conver_CaF
	Definir c Como Real;
	Escribir "Ingrese la temperatura en celcius que desea convertir: ";
	Leer c;
	Escribir c, " °C ---> ", conversion_1(c), " °F";
FinFuncion
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------//
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
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion c <- conversion_2(f)
	Definir c Como Real;
	c <- (f - 32) * 5/9;
FinFuncion
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------//
SubProceso cls
	Escribir "Presione una tecla para continuar...";
	Esperar Tecla;
	Limpiar Pantalla;
FinSubProceso
	