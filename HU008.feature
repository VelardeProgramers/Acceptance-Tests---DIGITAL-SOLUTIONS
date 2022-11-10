Feature: HU008 Como Medico quiero ver las citas que tengo en el día

Scenario: E01: Medica verifica las citas pendientes que tiene al día en consultas virtuales
	Given El medico se encuentra en la pantalla de cita virtual
	And El medico ingresa el "Area Medica" en el campo Area Medica
	And El medico ingresa el "Nombre" en el campo Nombre del Doctor
	And El medico ingresa el "Apellido" en el campo Apellido del doctor
	And El medico ingresa el "Codigo" en el campo codigo del doctor
	And El medico ingresa la "Fecha" en el campo Fecha
	When El medico le da al boton "Siguiente"
	Then Se mostrara una "TABLA DE TURNOS" con todas las citas que tiene ese día
	
	Examples: 
	| Area Medica | Nombre | Apellido | Codigo     | Fecha      | Boton siguiente | Tabla de turnos      |
	| Cardiologia | Renzo  | Zavaleta | U20211B636 | 10/11/2022 | click()         | 8:00 am - 8:40am ... |

Scenario: E02: Medica verifica las citas pendientes que tiene al día en consultas presenciales
	Given El medico se encuentra en la pantalla de cita presencial
	And El medico ingresa el "Area Medica" en el campo Area Medica
	And El medico ingresa el "Nombre" en el campo Nombre del Doctor
	And El medico ingresa el "Apellido" en el campo Apellido del doctor
	And El medico ingresa el "Codigo" en el campo codigo del doctor
	And El medico ingresa la "Fecha" en el campo Fecha
	And el medico ingresa el "Hospital" en el campo centro de salud
	When El medico le da al boton "Siguiente"
	Then Se mostrara una "TABLA DE TURNOS" con todas las citas que tiene ese día
	
	Examples: 
	| Area Medica | Nombre | Apellido | Codigo     | Fecha      | Boton siguiente | Tabla de turnos      | Centro de Salud |
	| Cardiologia | Renzo  | Zavaleta | U20211B636 | 10/11/2022 | click()         | 8:00 am - 8:40am ... | Dos de Mayo     |
