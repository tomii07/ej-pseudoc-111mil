Proceso invertir
	Definir lista Como caracter;
	Definir i Como Entero;
	Dimension lista[5];
	i <- 0;
	cargar_lista(lista,i);
	Escribir "LISTA: ";
	mostrar(lista,i);
	Escribir "";
	Escribir "LISTA INVERTIDA: "; 
	mostrar_invertida(lista);
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
Funcion mostrar_invertida(lista)
	Definir i Como Entero;
	i <- 4;
	Repetir
		Escribir "[",lista[i],"]" Sin Saltar;
		i <- i - 1;
	Hasta Que i < 0
	Escribir "";
FinFuncion
	