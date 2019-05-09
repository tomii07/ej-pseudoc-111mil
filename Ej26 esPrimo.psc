Proceso esPrimo
	
	Definir p Como Entero;
	
	Escribir "Ingrese un numero para ver si es primo o no: ";
	Leer p;
	
	
	Si primo(p) Entonces 
		Escribir "El numero ",p," es PRIMO";
	SiNo 
		Escribir "El numero ",p," NO es PRIMO";
	FinSi
	
FinProceso

Funcion es <- primo(p)
	
	Definir es Como Logico;
	Definir i, j Como Entero;
	
    i <- 0;
    j <- 1;
	
	Mientras j <= p Hacer        
		
        Si p % j = 0 Entonces
            i <- i + 1;
        FinSi
		
        j <- j + 1;   
		
    FinMientras
	
	Si i = 2 Entonces
        es <- Verdadero;
    Sino
		es <- Falso;
    FinSi    
	
FinFuncion
	