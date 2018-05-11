# features/configurarJuego.feature
Feature:
	como jugador oponente quiero configurar un numero secreto para que mi rival trate de adivinarlo


Scenario: El juego debe tener un titulo de bienvenida 
		Given que abro el juego  
		Then debo ver "Bienvenido a Picas y Fijas"

Scenario: Debo poder configurar un numero secreto (no visible)
		Given que abro el juego  
		When proveo "5678" como numero secreto
		And inicio el juego
		Then debo ver "El numero esta configurado"
		And debo ver "Estas listo para adivinar?"


Scenario: El numero secreto no debe tener digitos repetidos
		Given que abro el juego  
		When proveo "1111" como numero secreto
		And inicio el juego
		Then debo ver "Numero no valido, intenta de nuevo"
		



#Se realizan en las pruebas unitarioas
#Scenario: La longitud del numero secreto debe ser de 4
#Scenario: El numero secreto no debe ser negativo