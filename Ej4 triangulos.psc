Proceso Triangulo
	Escribir "CLASIFICACION DE UN TRIANGULO:";
	Escribir "Equilatero - Escaleno - Isoceles";
	Escribir "";
	Escribir "Ingrese un numero";
	Leer a;
	Escribir "Ingrese un numero";
	Leer b;
	Escribir "Ingrese un numero";
	Leer c;
	Si a = b & b = c Entonces
		Escribir  "Es equilatero";
	SiNo 
		Si ~(a = b) & ~(b = c) Entonces
			Escribir "Es escaleno";
		SiNo
			Escribir "Es isoceles";
		FinSi
	FinSi
FinProceso
