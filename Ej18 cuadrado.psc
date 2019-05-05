Proceso cuadrado
	
	Definir h Como Entero;
	Definir b Como Entero;
	Definir aux Como Entero;
	Definir shape Como Caracter;
	
	//Pido datos
	Escribir "Ingrese alto: ";
	Leer h;
	Escribir "Ingrese ancho: ";
	Leer b;
	
	aux <- b;
	shape <- '#';
	
	//Condiciones para que no sea valido
	Si h < 1 O b < 1 Entonces
		Escribir "Numeros Invalidos...";
	SiNo
		//Algoritmo para dibujar el cuadrado...
		//Tener en cuenta que el valor de h me marca las lineas donde van a estar escritos '#' dependiendo del valor de b.
		Repetir
			//Quiero que el valor de b se me resetee
			b <- aux;
			Repetir
				Escribir Sin Saltar shape;
				b <- b - 1;
			Hasta Que b = 0;
			Escribir "";
			h <- h - 1;
		Hasta Que h = 0;
	FinSi

FinProceso
