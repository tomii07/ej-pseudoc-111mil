Proceso cajero_automatico
	extraccion;
FinProceso
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
SubProceso extraccion
	Definir monto,cant_cajon,den_cajon,i,j,val1,val2,val3,aux Como Entero;
	Definir rta Como Caracter;
	Dimension cant_cajon[5];
	Dimension den_cajon[5];
	i <- 0;
	Repetir //Cargando la cantidad de billetes que va a haber en el cajon con su denominacion correspondiente.
		//Al tener una lista con 5 cajones y otra lista con 5 denominaciones no tuve en cuenta el orden en que se van a dar 
		//la cantidad de billetes por cajon. 
		//Directamente estableci que cada cajon va a tener una cierta cantidad independientemente de su respectiva denominacion.
		//Es decir, la posicion 0 de cant_cajon siempre va a pertenecer a la posicion 0 de den_cajon.
		den_cajon[i] <- monto_aleatorio;
		cant_cajon[i] <- cant_billetes;
		i <- i + 1;
	Hasta Que i = 5 
	val1 <- 0;
	val2 <- 0;
	val3 <- 0;
	Escribir "Ingrese el monto a retirar: $";
	Leer monto;
	cls;
	Escribir "Monto a retirar: $",monto;
	Escribir "Esta seguro que desea proceder?[S/N]";
	Leer rta;
	cls;
	
	
	//INCOMPLETO:
	//FALTA RESTAR LA CANTIDAD DE BILLETES ENTREGADOS AL USUARIO A CADA CAJON!!
	//FALTA INDICAR CUANDO EL USUARIO INGRESA UN MONTO NO DIVISIBLE POR 500 100 50
	
	
	Si rta = 'n' o rta = 'N' Entonces
		extraccion;
	SiNo
		//--------------------//
		Si monto >= 500 Entonces
			j <- 0;
			//Buscar en la lista SI HAY cajon/es con denominacion 500 y les resto la cantidad de billetes que le voy a entregar al usuario.
			Repetir
				Si den_cajon[j] = 500 Entonces
					val1 <- trunc(monto / 500);
					aux <- monto % 500;
					monto <- aux;
					cant_cajon[j] <- cant_cajon[j] - val1;
					Escribir cant_cajon[j];
				FinSi
				j <- j + 1;
			Hasta Que den_cajon[j - 1] = 500 O j = 5	
			Escribir val1, " BILLETES DE 500.";
		FinSi
		//--------------------//
		Si monto >= 100 Entonces
			j <- 0;
			//Buscar en la lista SI HAY cajon/es con denominacion 100 y les resto la cantidad de billetes que le voy a entregar al usuario.
			Repetir
				Si den_cajon[j] = 100 Entonces
					val2 <- trunc(monto / 100);
					aux <- monto % 100;
					monto <- aux;
					cant_cajon[j] <- cant_cajon[j] - val2;
				FinSi
				j <- j + 1;
			Hasta Que den_cajon[j - 1] = 100 O j = 5
			Escribir val2, " BILLETES DE 100.";
		FinSi
		//--------------------//
		Si monto >= 50 Entonces
			j <- 0;
			//Buscar en la lista SI HAY cajon/es con denominacion 50 y les resto la cantidad de billetes que le voy a entregar al usuario.
			Repetir
				Si den_cajon[j] = 50 Entonces
					val3 <- trunc(monto / 50);
					aux <- monto % 50;
					monto <- aux;
					cant_cajon[j] <- cant_cajon[j] - val3;
				FinSi
				j <- j + 1;
			Hasta Que den_cajon[j - 1] = 50 O j = 5
			Escribir val3, " BILLETES DE 50.";
		FinSi
	FinSi
	
	Escribir "Extraccion exitosa!";
	Escribir "Desea realizar otra extraccion...?[S/N]";
	Leer rta;
	Si rta = 's' o rta = 'S' Entonces
		cls;
		extraccion;
	SiNo
		Escribir "Hasta luego!";
		cls;
	FinSi

FinSubProceso
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion monto <- monto_aleatorio
	Definir rand,monto Como Entero;
	rand <- azar(3);
	
	Si rand = 0 Entonces
		monto <- 50;
	FinSi
	
	Si rand = 1 Entonces
		monto <- 100;
	FinSi
	
	Si rand = 2 Entonces
		monto <- 500;
	FinSi	
FinFuncion
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
Funcion cant <- cant_billetes
	Definir cant Como Entero;
	cant <- azar(101);
FinFuncion
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
SubProceso cls
	Escribir "Pulse una tecla para continuar...";
	Esperar Tecla;
	Limpiar Pantalla;
FinSubProceso


