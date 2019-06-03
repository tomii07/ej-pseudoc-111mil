Proceso contiene
	Definir lista,x Como caracter;
	Definir i,tam Como Entero;
	Dimension lista[100];
	Escribir "Ingrese la cantidad de elementos de la lista: ";
	Leer tam;
	i <- 0;
	cargar_lista(lista,i,tam);
	mostrar(lista,i,tam);
	Escribir "Ingrese el elemento a buscar en la lista: ";
	Leer x;
	Si esta_en_lista(lista,i,x) Entonces
		Escribir "El elemento buscado esta en la lista!";
	SiNo
		Escribir "El elemento buscado no esta en la lista :(";
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
Funcion nro <- esta_en_lista(lista,i,x)
	Definir nro Como Logico;
	nro <- falso;
		Si x = lista[i] Entonces
			nro <- Verdadero;
		SiNo
			nro <- esta_en_lista(lista,i + 1,x);
		FinSi
FinFuncion
	