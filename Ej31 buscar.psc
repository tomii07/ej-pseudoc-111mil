Proceso buscar
	Definir lista Como caracter;
	Definir i,posval,tam Como Entero;
	Dimension lista[100];
	Escribir "Ingrese el tamaño de la lista: ";
	Leer tam;
	i <- 0;
	cargar_lista(lista,i,tam);
	mostrar(lista,i,tam);
	posval <- buscarEnLista(lista,i,tam);
	Si posval < 0 Entonces
		Escribir "El elemento buscado no esta en la lista...";
	SiNo
		Escribir "El elemento buscado se encuentra en la posicion ",posval;
	FinSi
FinProceso
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion cargar_lista(lista,i,tam)
	Definir x Como Caracter;
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
Funcion pos <- buscarEnLista(lista,i,tam)
	Definir x Como Caracter;
	Definir pos Como Entero;
	Escribir "Ingrese un elemento a buscar en su lista: ";
	Leer x;
	Repetir
		Si x = lista[i] Entonces
			pos <- i;
		SiNo
			pos <- -1;
		FinSi
		i <- i + 1;
	Hasta Que i = tam O x = lista[i - 1]
FinFuncion
	