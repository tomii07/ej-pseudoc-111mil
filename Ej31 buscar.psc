Proceso buscar
	Definir lista Como caracter;
	Definir i,posval Como Entero;
	Dimension lista[5];
	i <- 0;
	cargar_lista(lista,i);
	mostrar(lista,i);
	posval <- buscarEnLista(lista);
	Si posval < 0 Entonces
		Escribir "El elemento buscado no esta en la lista...";
	SiNo
		Escribir "El elemento buscado se encuentra en la posicion ",posval;
	FinSi

FinProceso
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion cargar_lista(lista,i)
	Definir x Como Caracter;
	Repetir
		Escribir "Ingrese un elemento para la lista: ";
		Leer x;
		lista[i] <- x;
		i <- i + 1;
	Hasta Que i = 5;	
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion mostrar(lista,i)
	Repetir
		Escribir "[",lista[i],"]" Sin Saltar;
		i <- i + 1;
	Hasta Que i = 5
	Escribir "";
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion pos <- buscarEnLista(lista)
	Definir x Como Caracter;
	Definir j,pos Como Entero;
	j <- 0;
	Escribir "Ingrese un elemento a buscar en su lista: ";
	Leer x;
	Repetir
		Si x = lista[j] Entonces
			pos <- j;
		SiNo
			pos <- -1;
		FinSi
		j <- j + 1;
	Hasta Que j = 5 O x = lista[j - 1]
FinFuncion
	