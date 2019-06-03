Proceso buscar
	Definir lista,x Como caracter;
	Definir i,tam Como Entero;
	Dimension lista[100];
	Escribir "Ingrese el tamaño de la lista: ";
	Leer tam;
	i <- 0;
	cargar_lista(lista,i,tam);
	mostrar(lista,i,tam);
	Escribir "Ingrese un elemento a buscar en su : ";
	Leer x;
	Si buscarEnLista(lista,i,x) Entonces
		Escribir "El elemento buscado esta en la lista!!";
	SiNo
		Escribir "El elemento buscado no esta en su lista...";
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
Funcion pos <- buscarEnLista(lista,i,x)
	Definir pos Como Logico;
	pos <- falso;
		Si x = lista[i] Entonces
			pos <- Verdadero;
		SiNo
			Escribir i;
			pos <- buscarEnLista(lista,i + 1,x);
		FinSi
FinFuncion
	