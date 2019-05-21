Proceso contiene
	Definir lista Como caracter;
	Definir i Como Entero;
	Dimension lista[5];
	i <- 0;
	cargar_lista(lista,i);
	mostrar(lista,i);
	Si esta_en_lista(lista,i) Entonces
		Escribir "El elemento buscado esta en la lista!";
	SiNo
		Escribir "El elemento buscado no esta en la lista :(";
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
Funcion nro <- esta_en_lista(lista,i)
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
	Hasta Que nro = Verdadero O i = 5
FinFuncion
	