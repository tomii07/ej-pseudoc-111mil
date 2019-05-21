Proceso sumatoria
	Definir lista Como caracter;
	Definir i Como Entero;
	Dimension lista[5];
	i <- 0;
	cargar_lista(lista,i);
	Escribir "LISTA: ";
	mostrar(lista,i);
	Escribir "";
	Escribir "LA SUMA TOTAL DE LOS ELEMENTOS DE LA LISTA ES: ", sumar(lista,i);
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
Funcion total <- sumar(lista,i)
	Definir total,nro Como Entero;
	total <- 0;
	Repetir
		nro <- ConvertirANumero(lista[i]);
		total <- total + nro;
		i <- i + 1;
	Hasta Que i = 5
FinFuncion
	