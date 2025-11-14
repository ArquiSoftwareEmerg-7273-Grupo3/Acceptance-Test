Feature: Gestión de ofertas laborales

  Scenario Outline: Crear oferta laboral (escritor)
    Given que el usuario tiene rol "Escritor"
    When completa los campos requeridos de la oferta:
    Then la oferta se publica en la sección de empleo

  Examples:
    | titulo              | descripcion                           | pago_estimado | modalidad  |
    | "Guión para corto"  | "Escribir guión para animación breve" | 150           | Freelance  |


  Scenario Outline: Ver listado de ofertas (ilustrador)
    Given el usuario accede a la sección empleo
    When visualiza el listado de ofertas filtradas por "<categoria>"
    Then puede ver todas las ofertas disponibles relacionadas

  Scenario Outline: Postular a una oferta (ilustrador)
    Given el ilustrador encontró una oferta llamada "<oferta>"
    When selecciona "postular"
      And adjunta su portafolio "<archivo>"
    Then la postulación queda registrada

  Examples:
    | titulo              | descripcion                     | pago | tipo        | categoria     | oferta                 | archivo            |
    | "Guión corto"       | "Guión para video animado"      | 120  | Freelance   | Escritura     | "Guión corto"          | "portafolio1.pdf"  |
    | "Edición de texto"  | "Corrección de estilo de blog"  | 80   | Remoto      | Edición       | "Edición de texto"     | "portafolio2.pdf"  |
    | "Cover ilustrado"   | "Portada para novela juvenil"   | 200  | Freelance   | Ilustración   | "Cover ilustrado"      | "portfolio3.png"   |
