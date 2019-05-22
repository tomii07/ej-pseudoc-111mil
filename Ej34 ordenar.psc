Proceso ordenar
	Definir lista Como Entero;
	Definir i,tam Como Entero;
	Dimension lista[100];
	Escribir "Ingrese la cantidad de elementos de la lista: ";
	Leer tam;
	i <- 0;
	cargar_lista(lista,i,tam);
	Escribir "LISTA: ";
	mostrar(lista,i,tam);
	Escribir "";
	Escribir "LISTA ORDENADA: ";
	bubble_sort(lista,tam);
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
Funcion bubble_sort(lista,tam)
	Definir i,j,lon,aux Como Entero;
	lon <- tam;
	Repetir
		j <- 0;
		Para i <- 1 Hasta lon - 1  Con Paso 1 Hacer
			Si (lista[i - 1] > lista[i]) Entonces
				//Ordeno
				aux <- lista[i - 1];
				lista[i - 1] <- lista[i];
				lista[i] <- aux;
				j <- i;
			FinSi
		FinPara
		lon <- j;
	Hasta Que  j = 0;
	mostrar(lista,j,tam);
FinFuncion