Proceso alternativaSimple
	Definir a,b,c,d,e,f como caracter;
	Escribir "Para ingresar debe registrarse... ";
	//Registracion
	Escribir "Ingrese su usuario: ";
	Leer a;
	Repetir 
		Escribir "Ingrese su contraseņa: ";
		Leer b;
		Escribir "Ingrese su contraseņa nuevamente: ";
		Leer c;
		Si b != c Entonces
				Escribir "Las contraseņas no coinciden, intentelo nuevamente...";
		SiNo
			Escribir "Usuario registrado exitosamente!";
			Esperar 1 Segundo;
			Limpiar Pantalla;
		FinSi
	Hasta que b = c
	//Incio de sesion
	Escribir "Ingrese su usuario: ";
	Leer d;
	Si a != d entonces
		Repetir
			Escribir "Usuario incorrecto, por favor intentelo nuevamente: ";
			Leer d;
		Hasta Que a = d
	FinSi
	Escribir "Ingrese su contraseņa: ";
	Leer f;
	Si b != f Entonces
		Repetir 
			Escribir "Contraseņa incorrecta, por favor intentelo nuevamente: ";
			Leer f;
		Hasta Que b = f
	FinSi
	Esperar 1 Segundos;
	Limpiar Pantalla;
	Escribir "Incio de sesion exitoso! Cargando la pagina...";
	Escribir "Nah, mentira :)";
FinProceso
