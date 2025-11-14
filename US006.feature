Feature: Registro con selección de rol

 Scenario: Registro exitoso con selección de rol
    Given el usuario accede a la página de registro
    When completa el formulario con datos válidos
    And selecciona el rol "Ilustrador" o "Escritor"
    Then el sistema almacena su información correctamente
    And asocia el rol seleccionado al perfil del usuario

      Examples:
      | nombre        | email                 | password   | rol         |
      | Juan Pérez    | juan@mail.com         | juan123    | Ilustrador  |
      | María Gómez   | maria@mail.com        | maria123   | Escritor    |
      | Carlos Rojas  | carlos@mail.com       | carlos123  | Ilustrador  |

  Scenario: Visualización del rol en el perfil
    Given el usuario ya se registró previamente
    And tiene el rol "<rol>"
    When accede a su perfil
    Then puede ver el rol que seleccionó durante el registro: "<rol>"

    Examples:
      | usuario        | rol         |
      | Juan Pérez     | Ilustrador  |
      | María Gómez    | Escritor    |
      | Ana Torres     | Ilustrador  |
    
