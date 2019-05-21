Proceso ordenar
	Definir lista Como caracter;
	Definir i Como Entero;
	Dimension lista[5];
	i <- 0;
	cargar_lista(lista,i);
	Escribir "LISTA: ";
	mostrar(lista,i);
	Escribir "";
	Escribir "LISTA ORDENADA: ";
	bubble_sort(lista);
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
Funcion bubble_sort(lista)
	Definir i,j,lon Como Entero;
	Definir aux Como Caracter;
	lon <- 4;
	Repetir
		j <- 0;
		Para i <- 1 Hasta lon Con Paso 1 Hacer
			Si lista[i - 1] > lista[i] Entonces
				//Ordeno
				aux <- lista[i - 1];
				lista[i - 1] <- lista[i];
				lista[i] <- aux;
				j <- i;
			FinSi
		FinPara
		lon <- j;
	Hasta Que  j = 0;
	mostrar(lista,j);
FinFuncion
	