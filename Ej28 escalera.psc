Proceso escalera
	Definir piso Como Entero;
	Mientras 1 = 1 Hacer	
		Leer piso;
		Escribir 'Ingrese la cantidad de pisos';
		Escribir '';
		
		stair_construct(piso);
		Esperar Tecla;
		Limpiar Pantalla;
	FinMientras
FinProceso
// Funcion que arma la escalera:
SubProceso stair_construct(piso)
	Definir i,aux,j Como Entero;
	Definir escalon Como Caracter;
	aux <- piso;
	piso <- piso + 1;
	escalon <- '\| [#] |_';
	i <- 0; 
	j <- piso;
	Mientras piso<>i Hacer
		Si i = 0 Entonces
			Escribir escalon,spaces(aux) Sin Saltar;
			aux <- aux - 1;
		SiNo
			escalon <- Concatenar(escalones(i),escalon);
			Escribir escalon,spaces(aux) Sin Saltar;
			aux <- aux - 1;
		FinSi
		i <- i + 1;
		j <- j - 1;
		Si j > 0 Entonces
			Escribir 'PISO N° ', j;
		SiNo
			Escribir 'PLANTA BAJA';
		FinSi
	FinMientras
FinSubProceso
// Funcion que me marca los espacios entre cada piso:
SubProceso p <- escalones(i)
	Definir p Como Caracter;
	Definir j Como Entero;
	p <- ' ';
	j <- 0;
	i <- 0;
	Si i=0 Entonces
		p <- ' ';
	SiNo
		Repetir
			p <- Concatenar(p,' ');
			j <- j + 1;
		Hasta Que j = i
	FinSi
FinSubProceso
// Funcion que me alinea la impresion del numero de piso:
SubProceso q <- spaces(aux)
	Definir q Como Caracter;
	q <- ' ';
	Si aux > 0 Entonces
		Repetir
			q <- Concatenar(' ',q);
			aux <- aux - 1;
		Hasta Que aux < 0
	SiNo
		q <- Concatenar(' ',q);
	FinSi
FinSubProceso