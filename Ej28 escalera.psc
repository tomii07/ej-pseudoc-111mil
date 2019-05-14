Proceso escalera
	
	Definir piso Como Entero;
	
	Escribir "Ingrese la cantidad de pisos";
	Leer piso;
	
	Escribir "";
	
	stair_construct(piso);
	
FinProceso

// Funcion que arma la escalera:
Funcion stair_construct(piso)
	
	Definir i,aux como Entero;
	Definir escalon Como Caracter;
	
	aux <- piso;
	piso <- piso + 1;
	escalon <- '\| [#] |_';
	
	i <- 0; //Indicador de piso
	
	Mientras piso <> i Hacer
		Si i = 0 Entonces
			Escribir escalon,spaces(aux) Sin Saltar;
			aux <- aux - 1;
		SiNo
			escalon <- Concatenar(escalones(i),escalon);
			Escribir escalon,spaces(aux) Sin Saltar;
			aux <- aux - 1;
		FinSi
		i <- i + 1;
		Si i  < piso Entonces
			Escribir "PISO N° ",numero_piso(i,piso);
		SiNo
			Escribir "PLANTA BAJA";
		FinSi
		
	FinMientras
	
FinFuncion

// Funcion que me marca los espacios entre cada piso:
Funcion p <- escalones(i)
	
	Definir p Como Caracter;
	Definir j Como Entero;

	p <- " ";
	j <- 0;
	i <- 0;
	
	Si i = 0 Entonces
		p <- " ";
	SiNo
		Repetir
			p <- Concatenar(p, " ");
			j <- j + 1;
		Hasta Que j = i
	FinSi
	
FinFuncion

// Funcion que me indica en numero de piso:
Funcion nro <- numero_piso(i,piso)
	
	Definir nro Como Entero;
	
	Si i = 1 Entonces
		nro <- piso - 1;
	SiNo
		nro <- piso - i;
	FinSi
	
FinFuncion

// Funcion que me alinea la impresion del numero de piso:
Funcion q <- spaces(aux)
	
	Definir q Como Caracter;

	q <- " ";
	
	Si aux > 0 Entonces
		Repetir 
			q <- Concatenar(" ",q);
			aux <- aux - 1;
			Hasta Que aux < 0
	SiNo
		q <- Concatenar(" ",q);
	FinSi
	
FinFuncion
	