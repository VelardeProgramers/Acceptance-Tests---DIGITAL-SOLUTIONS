Feature: HU009 Como medico quiero abrir una videoconferencia con mi paciente

Scenario: E01: Medico abre una videoconferencia con el paciente
	Given El medico se encuentra en la pantalla de cita virtual
	And El medico ingresa el "Nombre" y "Apellido" en el campo Paciente
	And El medico ingresa el "Codigo de cita" en el campo Codigo de cita
	And El medico ingresa el "Anexo" en el campo Anexo - Historial
	When El medico le da al boton "crear videoconferencia"
	Then Se mostrara un mensaje de confirmacion
	And El medico accede a una sala 

	Examples: 
	| Paciente		| Codigo de Cita | Anexo - Historial| Boton Crear videoconferencia   | Mensaje de Confirmacion													  |             
	| Mateo Chavez  | 9785642        |     AC985		| click()						 | ¡Se ha creado una videoconferencia y enviado un link al paciente!	      |      
