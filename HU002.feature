Feature: HU002 Como usuario quiero confirmar mis datos en la app

	Scenario: E01: Usuario confirma cuenta
	Given El usuario se encuentra en la pantalla de confirmación de cuenta
	And recibe el "codigo" de confirmacion al celular
	When ingresa el codigo a la app
	And oprime el Boton "Aceptar"
	Then El sistema realiza la autenticazion
	And Aparece un mensaje de confirmacion
	Examples: 
	| Codigo   | Boton Aceptar | 
	| AB668C   | click()	     | 

	
	Scenario: E02: Usuario no recibe codigo de confirmacion
	Given El usuario se encuentra en la pantalla de confirmación de cuenta
	And no recibe el "codigo" de confirmacion
	When le da al boton "Enviar nuevamente"
	Then El sistema enviara otro codigo al celular
	And Aparece un mensaje de informacion
	Examples: 
	| Boton Reenviar Codigo   | Mensaje Informacion							    | 
	| click()				  | ¡Se ha enviado otro codigo por mensaje de texto!|	