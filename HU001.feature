Feature: HU001 Como usuario quiero crear un perfil de usuario para poder ingresar a la app.

Scenario: E01: Usuario registrado Correctamente
	Given El usuario se encuentra en la pantalla de registro
	And El usuario coloca su "Nombre" en el campo Nombre
	And El usuario coloca su "Apellido" en el campo Apellido
	And El usuario coloca su "Sexo" en el campo Sexo
	And El usuario coloca su "Edad" en el campo Edad
	And El usuario coloca su "Celular" en el campo Numero Celular
	And El usuario coloca su "Correo" en el campo Correo Electronico
	And El usuario coloca su "Clave" en el campo Contraseña
	When El usuario le da al boton "Crear Cuenta"
	Then El sistema realiza la autenticazion
	And Aparece un mensaje de confirmacion
	Examples: 
	| Nombre  | Apellido | Sexo      | Edad | Celular  | Correo             | Clave    | Boton Crear | Mensaje Confirmacion         |
	| Diego   | Bravo    | Masculino | 20   | 999856123 | dabv15@hotmail.com | DIego123 | click()     | ¡Se ha registrado con exito! |

Scenario: E02: Usuario no registrado por dator incorrectos
	Given El usuario se encuentra en la pantalla de registro
	And El usuario coloca su "Nombre" en el campo Nombre
	And El usuario coloca su "Apellido" en el campo Apellido
	And El usuario coloca su "Sexo" en el campo Sexo
	And El usuario coloca su "Edad" en el campo Edad
	And El usuario coloca su "Celular" en el campo Numero Celular
	And El usuario coloca su "Correo" en el campo Correo Electronico
	And El usuario coloca su "Clave" en el campo Contraseña
	When El usuario le da al boton "Crear Cuenta"
	Then El sistema realiza la autenticazion
	And Aparece un mensaje de error
	Examples: 
	| Nombre  | Apellido | Sexo      | Edad | Celular  | Correo             | Clave    | Boton Crear | Mensaje Confirmacion         |
	| Diego   | Bravo    | Masculino | 70   | 60	   | dabv15@hotmail.com | DIego123 | click()     | ¡Hay un error en los datos, ingreselo correctamente! |

     