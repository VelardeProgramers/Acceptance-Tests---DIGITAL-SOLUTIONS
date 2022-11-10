Feature: HU006 Como paciente quiero cancelar mis citas reservadas

Scenario: E01: Paciente cancela citas medicas virtuales
	Given El paciente se encuentra en la pantalla de tramites
	And El paciente ingresa el "Documento" en el campo Documento de Identidad
	And El paciente ingresa el "TTramite" en el campo Tipo de Tramite 
	And El paciente ingresa el "Anexo" en el campo Anexo del Documento
	When El paciente le da al boton "Siguiente"
	Then Se mostraran todos los documentos que busca
	And El paciente le da al boton "Eliminar" 
	And Selecciona la cita virtual
	And le da al boton "Eliminar"
	Then Se mostrara un mensaje de confirmacion
	Examples: 
	| Documento de Identidad | Tipo de Tramite  | Anexo | Boton Siguiente | Cita para el 20 de noviembre - Hora 8:00 am - virtual| Boton eliminar | Mensaje de confirmacion     |
	| DNI - 09578963         | Citas reservadas | AC985 | click()         | click()											     | click()        | ¡Su cita ha sido eliminada! |

Scenario: E02: Paciente cancela citas medicas presenciales
	Given El paciente se encuentra en la pantalla de tramites
	And El paciente ingresa el "Documento" en el campo Documento de Identidad
	And El paciente ingresa el "TTramite" en el campo Tipo de Tramite 
	And El paciente ingresa el "Anexo" en el campo Anexo del Documento
	When El paciente le da al boton "Siguiente"
	Then Se mostraran todos los documentos que busca
	And El paciente le da al boton "Eliminar" 
	And Selecciona la cita virtual
	And le da al boton "Eliminar"
	Then Se mostrara un mensaje de confirmacion
	Examples: 
	| Documento de Identidad | Tipo de Tramite  | Anexo | Boton Siguiente | Cita para el 20 de noviembre - Hora 8:00 am- Hospital 2 de Mayo | Boton eliminar | Mensaje de confirmacion     |
	| DNI - 09578963         | Citas reservadas | AC985 | click()         | click()														    | click()        | ¡Su cita ha sido eliminada! |
