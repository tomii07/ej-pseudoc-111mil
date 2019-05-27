Proceso sumatoria_rec
	
	Definir lista,yHasta,xDesde Como Entero;
	Dimension lista[100];
	Definir n Como Entero;
	
	lista[0] <- 1;
	lista[1] <- 1;
	lista[2] <- 1;
	lista[3] <- 2;
	lista[4] <- 1;	
	
	n <- 5;
	
	Escribir "Sumatoria recursiva: ",sum(lista,n);
	
	Escribir "";
	
	xDesde <- 0;
	yHasta <- n - 1;
	Escribir "Sumatoria recursiva desde-hasta: ",desdeHasta(lista,xDesde,yHasta);
	
FinProceso

FUncion r <- sum(lista,n)
	
	Definir r Como Entero;
	
	Si n = 0 Entonces
		r <- 0;
	SiNo
		r <- lista[n-1] + sum(lista,n-1);
	FinSi
	
FinFuncion

Funcion x <- desdeHasta(lista,xDesde,yHasta)
	
	Definir x Como Entero;
	
	Si xDesde > yHasta Entonces
		x <- 0;
	SiNo
		x <- lista[xDesde] + desdeHasta(lista,xDesde + 1,yHasta);
	FinSi
	
	
FinFuncion
