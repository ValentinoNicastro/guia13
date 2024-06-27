Algoritmo Parte1
	Definir cp, continuar, cantCartas, cpM, tipoEnvio Como Entero;
	Definir recTT, peso, costoBase, costoIva, costoFinal, pesoM, recEmp, costoM Como Real;
	Para despachos<-1 Hasta 3 Con Paso 1 Hacer
		cantCartas <- 0;
		recTT <- 0;
		costoM = 0;
		Escribir 'Ingrese 1 si quiere ingresar una carta';
		Leer continuar;
		Mientras continuar==1 Hacer
			Escribir 'Ingrese Codigo Postal';
			Leer cp;
			Escribir 'Ingrese el peso en gramos';
			Leer peso;
			Escribir 'Ingrese 1 si el envio es Simple';
			Leer tipoEnvio;
			Si tipoEnvio==1 Entonces
				costoBase <- peso*0.50;
			SiNo
				costoBase = peso*1;
			FinSi
			costoIva = (21*costoBase)/100;
			costoFinal = costoIva + costoBase;
			recTT = recTT + costoFinal;
			Si costoFinal > costoMayor Entonces
				costoMayor = costoFinal;
			FinSi
		FinMientras
	FinPara
FinAlgoritmo
