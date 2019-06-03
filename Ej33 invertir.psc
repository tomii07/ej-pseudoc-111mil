Proceso invertir
	Definir lista Como caracter;
	Definir i,tam Como Entero;
	Dimension lista[100];
	Escribir "Ingrese la cantidad de elemento de la lista: ";
	Leer tam;
	i <- 0;
	cargar_lista(lista,i,tam);
	Escribir "LISTA: ";
	mostrar(lista,i,tam);
	Escribir "";
	Escribir "LISTA INVERTIDA: "; 
	i <- tam - 1;
	mostrar_invertida(lista,i);
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
Funcion mostrar_invertida(lista,i)
	Si i >= 0 Entonces
		Escribir "[",lista[i],"]" Sin Saltar;
		mostrar_invertida(lista,i - 1);
		Escribir "";
	FinSi
FinFuncion
	