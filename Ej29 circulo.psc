Proceso circulo
	
	Definir r,i como entero;
	Definir hashes Como Caracter;
	
	Escribir "Ingrese un radio: ";
	Leer r;
	
	i <- r; // Variable indicadora del numero de cada fila del circulo
	hashes <- '#';
	
	Si r < 1 Entonces
		Escribir "Radio ingresado invalido...";
	SiNo
		Si r <= 4 Y r >= 1 Entonces
			//Tengo que desarrollar el codigo para los circulos de radio 1, 2, 3, 4...
			circulos_especiales(i,r,hashes);
		SiNo
			top(i,r,hashes);
			body(i,r,hashes);
			bot(i,r,hashes);
		FinSi
	FinSi

FinProceso

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------//
//Funcion para la parte de arriba del circulo...
Funcion top(i,r,hashes)
	
	Definir aux Como Entero;
	
	Repetir
		Si i = r Entonces
			aux <- r - 4;
			Escribir "  " Sin Saltar;
			Repetir
				Escribir hashes Sin Saltar;
				aux <- aux - 1;
			Hasta Que aux = 0
			Escribir "  ";
		SiNo
			aux <- r - 2;
			Escribir " " Sin Saltar;
			Repetir
				Escribir hashes Sin Saltar;
				aux <- aux - 1;
			Hasta Que aux = 0
			Escribir " ";
		FinSi
		i <- i - 1;
	Hasta Que i = (r - 2) 
	
FinFuncion

//Funcion para el cuerpo del circulo...
Funcion body(i,r,hashes)
	
	Definir aux Como Entero;
	
	i <- i - 4;
	
	Repetir
		aux <- r;	
		Repetir
			Escribir hashes Sin Saltar;
			aux <- aux - 1;
		Hasta Que aux = 0
		Escribir "";
		i <- i - 1;
	Hasta Que i = 0

FinFuncion

//Funcion para la parte de abajo del circulo...
Funcion bot(i,r,hashes)
	
	Definir aux Como Entero;
	
	i <- r - (r - 1); // La ultima fila del circulo...
	
	Repetir
		Si i = (r - (r - 1)) Entonces
			aux <- r - 2;
			Escribir " " Sin Saltar;
			Repetir
				Escribir hashes Sin Saltar;
				aux <- aux - 1;
			Hasta Que aux = 0
			Escribir " ";
		SiNo
			aux <- r - 4;
			Escribir "  " Sin Saltar;
			Repetir
				Escribir hashes Sin Saltar;
				aux <- aux - 1;
			Hasta Que aux = 0
			Escribir "  ";
		FinSi
		i <- i + 1;
	Hasta Que i = 3
	// La ultima fila siempre va a ser i = 1 y la anteultima siempre va a ser i = 2
	
FinFuncion
	
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------//
//Funcion para cuando el radio del circulo es menor que 4 (r < 4)

Funcion circulos_especiales(i,r,hashes)
	
	Definir aux Como Entero;
	
	Si r = 1 Entonces
		Escribir hashes;
	SiNo
		Si r = 4 Entonces
			Repetir
				Si i = 3 O i = 2 Entonces
					aux <- r;
					Repetir
						Escribir hashes Sin Saltar;
						aux <- aux - 1;
					Hasta Que aux = 0
					Escribir "";
				SiNo
					aux <- r - 2;
					Escribir " " Sin Saltar;
					Repetir 
						Escribir hashes Sin Saltar;
						aux <- aux - 1;
					Hasta Que aux = 0
					Escribir " ";
				FinSi
				i <- i - 1;
			Hasta Que i = 0
		SiNo
			Repetir
				aux <- r;
				Repetir
					Escribir hashes Sin Saltar;
					aux <- aux - 1;
				Hasta Que aux = 0
				Escribir "";
				i <- i - 1;
			Hasta Que i = 0
		FinSi
	FinSi
	
FinFuncion