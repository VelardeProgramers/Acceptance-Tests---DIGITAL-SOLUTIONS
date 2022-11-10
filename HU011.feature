Feature: HU011 Como desarrollador quiero administrar los datos de los usuarios

Scenario: E01: Desarrollador modifica cuenta de medico
	Given El desarrollador se encuentra en la pantalla de configuracion de cuentas
	And El desarrollador ingresa el "Documento" en el campo Documento de Identidad
	And El desarrollador selecciona el "TUsuario" en el campo Tipo de Usuario
	And El desarrollador ingresa el "Codigo" en el campo Codigo de verificacion
	And El desarrollador ingresa el "Hospital" en el campo Hospital
	When El paciente le da al boton "Siguiente"
	Then Se muestra el perfil del usuario 
	And le da al boton "modificar"
	Then cuando termine le da al boton "confirmar"
	And Aparece un mensaje de confirmacion
	Examples: 
	| Documento de Identidad | Tipo de Usuario | Codigo   | Hospital    | boton siguiente | boton modificar | boton confirmar | mensaje                           |
	| DNI - 09578963         | Medico          | BB7608-M | Dos de Mayo | click()         | click()         | click()         | ¡los datos han sido actualizados! |
	
	
	Scenario: E02: Desarrollador modifica cuenta de paciente
	Given El desarrollador se encuentra en la pantalla de configuracion de cuentas
	And El desarrollador ingresa el "Documento" en el campo Documento de Identidad
	And El desarrollador selecciona el "TUsuario" en el campo Tipo de Usuario
	And El desarrollador ingresa el "Codigo" en el campo Celular
	And El desarrollador ingresa el "Numero celular" en el campo Hospital
	When El paciente le da al boton "Siguiente"
	Then Se muestra el perfil del usuario 
	And le da al boton "modificar"
	Then cuando termine le da al boton "confirmar"
	And Aparece un mensaje de confirmacion
	Examples: 
	| Documento de Identidad | Tipo de Usuario | Codigo   | Celular    |boton siguiente | boton modificar | boton confirmar | mensaje                          |
	| DNI - 09578963         | Paciente        | BB7608-M | 972568445  |  click()       | click()         | click()         | ¡los datos han sido actualizados!|