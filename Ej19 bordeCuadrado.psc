Proceso bordeCuadrado
	Definir h,w,h2,w2,aux1,aux2,aux3 Como Entero;
	Definir sh1,sh2,sh3 Como Caracter;
	Escribir "PROGRAMA DEL BORDE DE UN CUADRADO!";
	Repetir
		Escribir "Ingrese alto: ";
		Leer h;
		Escribir "Ingrese ancho: ";
		Leer w;
		Si h < 1 O w < 1 Entonces
			Escribir "Numeros ingresados incorrectos, vuelva a intentarlo...";
		FinSi
	Hasta Que h > 0 Y w > 0 
	aux1 <- w;
	aux2 <- w;
	sh1 <- '+';
	sh2 <- '-';
	sh3 <- '|';
	h2 <- h + 2;
	w2 <- w + 2;
	aux3 <- h2;
	//Algoritmo para dibujar el borde del cuadrado
	Repetir
		Si aux3 = h2 O h2 = 1 Entonces
			//Dibujo el borde de arriba y el de abajo
			Escribir sh1 Sin Saltar;
			//Reseteo el valor 
			aux2 <- w;
			Repetir
				Escribir sh2 Sin Saltar;
				aux2 <- aux2 - 1;
			Hasta Que aux2 <= 0
			Escribir sh1;
		SiNo
			//Dibujo el borde de los costados
			Escribir sh3 Sin Saltar;
			//Reseteo el valor
			aux1 <- w;
			//Dibujo lo de adentro espaciado
			Repetir
				Escribir " " Sin Saltar;
				aux1 <- aux1 - 1;
			Hasta Que aux1 <= 0
			Escribir sh3;
		FinSi
		h2 <- h2 - 1;
	Hasta Que h2 <= 0
FinProceso
