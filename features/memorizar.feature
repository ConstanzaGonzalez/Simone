#language: es

Característica: Simone

Escenario: Muestra secuencia numerica
	Dado que voy a la portada memorizar
	Entonces veo "3-1"

Escenario: Muestra avanzar
	Dado que estoy en portada memorizar
	Entonces aparece boton "avanzar"

Escenario: Veo cuatro botones
	Dado que estoy en la portada memorizar
	Y presiono el boton avanzar
	Entonces aparece la pantalla jugar con con los botones "1", "2", "3", "4" 



Escenario: Hago click en el boton "2"
	Dado que estoy en la portada memorizar
	Y presiono el boton avanzar
	Y presiono sobre el boton "2"
	Entonces veo el texto "Error" 
