Proceso contiene
	Definir lista Como caracter;
	Definir i,tam Como Entero;
	Dimension lista[100];
	Escribir "Ingrese la cantidad de elementos de la lista: ";
	Leer tam;
	i <- 0;
	cargar_lista(lista,i,tam);
	mostrar(lista,i,tam);
	Si esta_en_lista(lista,i,tam) Entonces
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
Funcion nro <- esta_en_lista(lista,i,tam)
	Definir nro Como Logico;
	Definir x Como Caracter;
	Escribir "Ingrese el elemento a buscar en la lista: ";
	Leer x;
	Repetir
		Si x = lista[i] Entonces
			nro <- Verdadero;
		SiNo
			nro <- Falso;
		FinSi
		i <- i + 1;
	Hasta Que nro = Verdadero O i = tam
FinFuncion
	