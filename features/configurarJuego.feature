# features/configurarJuego.feature
Feature:
	como jugador de RubyAhorcado deseo cargar el juego


Scenario: El juego debe tener un titulo de bienvenida 
		Given que abro el juego  
		Then debo ver "Bienvenido a RubyAhorcado"

Scenario: Debo poder inic¡ar el juego
		Given que abro el juego  
		When doy clic en el boton jugar
		Then debo ver "Juguemos!!!"


#Scenario: El numero secreto no debe tener digitos repetidos
#		Given que abro el juego  
#		When proveo "1111" como numero secreto
#		And inicio el juego
#		Then debo ver "Numero no valido, intenta de nuevo"
		



#Se realizan en las pruebas unitarias
#Scenario: El dato ingresado debe ser letra