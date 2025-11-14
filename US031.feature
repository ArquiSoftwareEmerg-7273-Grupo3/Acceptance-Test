Feature: Recomendaciones inteligentes

  Scenario: Oferta sugerida al ilustrador
    Given el ilustrador tiene proyectos en su portafolio
    When la IA detecta coincidencias con una oferta
    Then el usuario recibe una recomendación personalizada

  Scenario: Recomendación de ilustrador a autores
    Given el escritor publica una oferta
    When la IA analiza los portafolios disponibles
    Then se muestra una lista de ilustradores sugeridos

  Examples:
    | usuario        | tipo_usuario | accion_realizada      | recomendacion_generada     |
    | "ana_torres"   | ilustrador   | subió arte digital    | oferta de estilo similar   |
