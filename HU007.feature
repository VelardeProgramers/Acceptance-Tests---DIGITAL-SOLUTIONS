Feature: HU007 Como Medico quiero registrar los resultados medicos de mis pacientes

Scenario: E01: Medico registra resultados de un paciente
	Given El medico se encuentra en la pantalla de tramites
	And El medico ingresa el "Documento" en el campo Documento de Identidad del Paciente
	And El medico ingresa el "TTramite" en el campo Tipo de Tramite 
	And El medico ingresa el "Anexo" en el campo Anexo del Documento
	And El medico ingresa el "Apellido" y "Nombre" del paciente en el campo Paciente
	When El medico le da al boton "Registrar"
	Then Se mostrara un mensaje de confirmacion
	And Se mostrará en pantalla el documento registrado
	Examples: 
	| Documento de Identidad del Paciente | Tipo de Tramite			    | Anexo | Paciente						   | Boton Registrar | Mensaje de confirmacion     |
	| DNI - 09578963					  | Resultado Análisis de Sangre | AC985 | Bravo Vilca Diego Alonso         | click()         | ¡Se ha registrado el documento con éxito! |

Scenario: E02: Medico quiere eliminar resultados de un paciente
	Given El medico se encuentra en la pantalla de tramites
	And El medico ingresa el "Documento" en el campo Documento de Identidad del Paciente
	And El medico ingresa el "TTramite" en el campo Tipo de Tramite 
	And El medico ingresa el "Anexo" en el campo Anexo del Documento
	And El medico ingresa el "Apellido" y "Nombre" del paciente en el campo Paciente
	When El medico le da al boton "Buscar"
	Then Se mostrara el documento
	And el medico le da al boton "Eliminar"
	And Se mostrara un mensaje de confirmacion
	Examples: 
	| Documento de Identidad del Paciente | Tipo de Tramite              | Anexo | Paciente                 | Boton Buscar | Resultado Medico  | Boton Eliminar | Mensaje de confirmacion                   |
	| DNI - 09578963                      | Resultado Análisis de Sangre | AC985 | Bravo Vilca Diego Alonso | click()      | 09578963 -  AC985 |  click()	    | ¡El documento ha sido eliminado! |
