Proceso alternativaDoble
	
	Escribir "Ingrese la cantidad de bancos disponibles: ";
	Leer bcos;
	Escribir "Ingrese la cantidad de alumnos inscriptos: ";
	Leer al;
	
	Escribir "Hay ", bcos, " bancos para ", al, " alumnos...";
	
	Si al > bcos Entonces
		bcos_necesarios <- al - bcos;
		Escribir "Hay mas alumnos, hacen falta ", bcos_necesarios, " bancos";
	FinSi

FinProceso
