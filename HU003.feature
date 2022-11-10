Feature: HU003 Como paciente quiero reservar una cita presencial


Scenario: E01: Paciente reserva cita presencial
	Given El usuario se encuentra en la pantalla de cita presencial
	And El paciente ingresa el "Area Medica" en el campo Area Medica
	And El paciente ingresa el "TPaciente" en el campo Tipo de Paciente
	And El paciente ingresa el "Turno" en el campo Turno de cita
	And El paciente ingresa el "ODoctor" en el campo Apellido Doctor (opcional)
	And El paciente ingresa el "Hospital" en el campo Hospital
	When El paciente le da al boton "Siguiente"
	Then Se mostrara un "TABLA DE TURNOS"
	And el paciente seleccione un turno 
	And le de al boton "Reservar"
	Then Se mostrara un mensaje de confirmacion
	Examples: 
	| Area Medica | Tipo de Paciente | Turno  | Doctor         | Hospital    | Boton Siguiente | Tabla de Turnos                             | Boton Reservar | mensaje Confirmacion Crear |
	| Neumología  | Normal           | Mañana | Garcia Navarro | Dos de Mayo | click()         | García Navarro - 8:00 - Martes - 10-11-2022 | click()        | ¡Cita reservada con éxito! |

Scenario: E02: Paciente no reserva cita presencial por error de datos
	Given El usuario se encuentra en la pantalla de cita presencial
	And El paciente ingresa el "Area Medica" en el campo Area Medica
	And El paciente ingresa el "TPaciente" en el campo Tipo de Paciente
	And El paciente ingresa el "Turno" en el campo Turno de cita
	And El paciente ingresa el "ODoctor" en el campo Apellido Doctor (opcional)
		And El paciente ingresa el "Hospital" en el campo Hospital
	When El paciente le da al boton "Siguiente"
	Then Se mostrara un "TABLA DE TURNOS"
	And el paciente seleccione un turno 
	And le de al boton "Reservar"
	Then Se mostrara un mensaje de advertencia
	Examples: 
	| Area Medica | Tipo de Paciente | Turno  | Doctor | Hospital    | Boton Siguiente | Tabla de Turnos                  | Boton Reservar | mensaje Confirmacion Crear           |
	| Neumología  | Normal           | Normal | ...    | Dos de Mayo | click()         | ... - 8:00 - Martes - 10-11-2022 | click()        | ¡Ingrese datos correctos, por favor! |

     