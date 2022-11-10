Feature: HU009 Como paciente quiero ver los hospitales cercanos a mi posición

Scenario: E01: El paciente permite que la app acceda a su ubicación
	Given El paciente se ncuentra en la pantalla de Hospitales Cercanos
	And  lea el mensaje de permiso
	When Le de al boton "Permitir Acceso"
	Then Se mostrara un mapa con los hospitales cercanos a su posicion
	Examples: 
	| mensaje de permisos								 | Boton permitir acceso | 
	| ¿Permite que la aplicación acceda a su ubicacion?	 | click()               | 
			
Scenario: E02: El paciente no acepta que la app acceda a su ubicación
	Given El paciente se ncuentra en la pantalla de Hospitales Cercanos
	And  lea el mensaje de permiso
	When Le de al boton "Denegar Acceso"
	Then Se mostrara un mensaje de informacion
	Examples: 
	| mensaje de permisos                               | Boton denegar acceso | mensaje de informacion |
	| ¿Permite que la aplicación acceda a su ubicacion? | click()              | no se puede acceder al mapa por falta de permisos  |
		