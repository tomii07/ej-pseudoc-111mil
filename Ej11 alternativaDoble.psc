Proceso alternativaDoble
	Definir bcos,al,bcos_necesarios como entero;
	Escribir "PROGRAMA PARA CALCULAR LA CANTIDAD DE BANCOS Y ALUMNOS DE CADA AULA!";
	Escribir "Ingrese la cantidad de bancos disponibles: ";
	Leer bcos;
	Escribir "Ingrese la cantidad de alumnos inscriptos: ";
	Leer al;

	Si al > bcos Entonces
		bcos_necesarios <- al - bcos;
		Escribir "Hay mas alumnos, hacen falta ", bcos_necesarios, " bancos";
	SiNo
		Escribir "Hay ", bcos, " bancos para ", al, " alumnos.";
		Escribir "Los bancos son suficientes!!";
	FinSi
FinProceso
