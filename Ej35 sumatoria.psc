Proceso sumatoria
	Definir lista,i,tam Como Entero;
	Dimension lista[100];
	Escribir "Ingrese la cantidad de elementos de la lista: ";
	Leer tam;
	i <- 0;
	cargar_lista(lista,i,tam);
	Escribir "LISTA: ";
	mostrar(lista,i,tam);
	Escribir "";
	Escribir "LA SUMA TOTAL DE LOS ELEMENTOS DE LA LISTA ES: ", sumar(lista,i,tam);
FinProceso
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion cargar_lista(lista,i,tam)
	Definir x Como Entero;
	Repetir
		Escribir "Ingrese un elemento para la lista: ";
		Leer x;
		lista[i] <- x;
		i <- i + 1;
	Hasta Que i = tam;	
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion mostrar(lista,i,tam)
	Repetir
		Escribir "[",lista[i],"]" Sin Saltar;
		i <- i + 1;
	Hasta Que i = tam
	Escribir "";
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion total <- sumar(lista,i,tam)
	Definir total,nro Como Entero;
	total <- 0;
	Repetir
		nro <- lista[i];
		total <- total + nro;
		i <- i + 1;
	Hasta Que i = tam
FinFuncion