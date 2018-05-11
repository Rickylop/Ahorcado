#language: es

Característica:
	Como jugador quiero adivinar el numero secreto para ganarle a mi rival


Escenario: 4 Picas
		Dado que ya empezo un juego con el numero "5678"
		Cuando ingrese "8765" Como numero a adivinar 
		Entonces debo ver "8765 0F 4P" 

Escenario: El juego debe tener un boton que al oprimir compare el numero con el numero secreto

#Scenario: El numero digitado debe tener 4 digitos
#Scenario: El numero digitado no debe estar repetido
