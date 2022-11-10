Feature: HU005 Como paciente quiero ver mis tramites y resultados medicos

Scenario: E01: Paciente ve informacion de tramites medicos
	Given El usuario se encuentra en la pantalla de tramites
	And El paciente ingresa el "Documento" en el campo Documento de Identidad
	And El paciente ingresa el "TTramite" en el campo Tipo de Tramite 
	And El paciente ingresa el "Anexo" en el campo Anexo del Documento
	When El paciente le da al boton "Siguiente"
	Then Se mostraran todos los documentos que busca
	Examples: 
	| Documento de Identidad | Tipo de Tramite			  | Anexo  | Boton Siguiente | 
	| DNI - 09578963		 | Citas reservadas           | AC985  | click()		 | 

Scenario: E02: Paciente registra datos incorrectos en Tramites
	Given El usuario se encuentra en la pantalla de tramites
	And El paciente ingresa el "Documento" en el campo Documento de Identidad
	And El paciente ingresa el "TTramite" en el campo Tipo de Tramite 
	And El paciente ingresa el "Anexo" en el campo Anexo del Documento
	When El paciente le da al boton "Siguiente"
	Then Se mostrara un mensaje de advertencia
	Examples: 
	| Documento de Identidad | Tipo de Tramite  | Anexo | Boton Siguiente | Mensaje de Advertencia                  |
	| DNI - 09578963         | 091885645	    | AAAAA | click()         | ¡Por favor, ingrese datos correctamente! |

	Scenario: E03: Paciente no cuenta con tramites pendientes 
	Given El usuario se encuentra en la pantalla de tramites
	And El paciente ingresa el "Documento" en el campo Documento de Identidad
	And El paciente ingresa el "TTramite" en el campo Tipo de Tramite 
	And El paciente ingresa el "Anexo" en el campo Anexo del Documento
	When El paciente le da al boton "Siguiente"
	Then Se mostrara un mensaje de informacion
	Examples: 
	| Documento de Identidad | Tipo de Tramite  | Anexo | Boton Siguiente | Mensaje de Advertencia              |
	| DNI - 09578963         | Citas reservadas | AC985 | click()         | ¡No cuenta con tramites pendientes! |
     