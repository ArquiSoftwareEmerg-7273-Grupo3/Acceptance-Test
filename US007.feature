Feature: Inicio de sesión

  Scenario Outline: Inicio de sesión exitoso
    Given el usuario está registrado en la plataforma
    When ingresa su correo "<email>" y contraseña "<password>"
    Then es redirigido al dashboard correspondiente a su rol "<rol>"

  Scenario: Credenciales incorrectas
    Given el usuario intenta iniciar sesión
    When ingresa credenciales incorrectas
    Then el sistema muestra un mensaje de error
    And permanece en la pantalla de inicio de sesión

  Examples:
    | email           | password | rol         |
    | juan@mail.com   | juan123  | Ilustrador  |
