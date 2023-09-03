Algoritmo registroAsistencia
	
	Definir menu,cantidadAlumno,diasHabiles, A, inasistenciasAlum, promedioAsistencia, totalInasistenciasAlum, promedioTotalInasistencias, totalAlumnos, inasistenciasDia, asistenciaXdia, totalInasistenciasDia, totalAsistenciasDia Como Entero;
	Escribir "Hola seño!!!";
	Escribir "¿Por dónde empezamos?";
	Repetir
		Escribir "1) Por alumno";
		Escribir "2) Por dia";
		Escribir "0) Para salir";
		Leer menu
		Escribir "---------------";
		si menu=1 Entonces
			Escribir "Indicar cantidad de alumnos";
			Leer cantidadAlumno;
			Escribir "Ingresar cantidad días hábiles";
			Leer diasHabiles;
			Escribir "---------------------------";
			Para A <- 1 Hasta cantidadAlumno Con Paso 1 Hacer
				Escribir "Para alumno ",A;  //permitirá conocer por el número de alumno 
				
				Escribir "Ingresar inasistencias";
				Leer inasistenciasAlum;
				//permitirá conocer el promedio de asistencia de cada alumno para ir completando el registro
				promedioAsistencia<-(diasHabiles-inasistenciasAlum)*100/diasHabiles;
				
				Escribir "Promedio de asistencia ",promedioAsistencia," % ";
				Escribir "-------------------------------------------------"
				//nos permitirá ir sumando las inasistencias de todos los alumnos para luego poder sacar el promedio total 
				totalInasistenciasAlum<-totalInasistenciasAlum+inasistenciasAlum;
				//permite ir guardando los promedios las asistencias
				totalAsistencias<-totalAsistencias+promedioAsistencia;
			Fin Para
			
			//promedio total de asistencia de todos
			promedioTotalAsistencias<-totalAsistencias/cantidadAlumno
			
			Escribir "Promedio total de asistencias ",promedioTotalAsistencias," % ";
			Escribir "Total mesual de inasistencias ",totalInasistenciasAlum;
			Escribir "-----------------------------------------------------------";
		FinSi
		
		si menu=2 Entonces
			Escribir "Ingresar cantidad de días hábiles";
			Leer diasHabiles;
			Escribir "Indicar total de alumnos";
			Leer totalAlumnos;
			Escribir "----------------------------------";
			Para D <- 1 Hasta diasHabiles Con Paso 1 Hacer
				Escribir "Para día ",D;
				Escribir "Ingresar inasistencias";
				Leer inasistenciasDia;
				
				//nos permitirá obtener la cantidad de asistencias del dia
				asistenciaXdia<-totalAlumnos-inasistenciasDia
				Escribir "Total de alumnos presentes ",asistenciaXdia;
				Escribir "--------------------------------------------------------";
				//obtener las inasistencias de todos para luego sacar el promedio
				totalInasistenciasDia<-totalInasistenciasDia+inasistenciasDia
				//obtener las asistencia de todos para luego sacar el promedio 
				totalAsistenciasDia<-totalAsistenciasDia+asistenciaXdia;
			Fin Para
			Escribir "Total de inasistencias del mes ",totalInasistenciasDia;
			Escribir "Total de asistencias del mes ",totalAsistenciasDia;
			Escribir "----------------------------------------------------------------";
		FinSi
	Hasta Que menu=0
	Escribir "Nos vemos el mes que viene"
FinAlgoritmo
