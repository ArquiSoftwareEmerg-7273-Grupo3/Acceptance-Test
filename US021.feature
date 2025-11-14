Feature: Portafolio del ilustrador

  Scenario: Visualizar portafolio
    Given el usuario accede al perfil de un ilustrador
    When selecciona el apartado "portafolio"
    Then se muestran sus proyectos y trabajos

  Scenario: Subir proyectos
    Given el usuario tiene rol "Ilustrador"
    When sube imágenes o archivos válidos
    Then se añaden a su portafolio

  Scenario: Organizar por categorías
    Given el ilustrador está en su portafolio
    When crea categorías
    Then sus proyectos quedan agrupados según la categoría creada

  Scenario: Eliminar un proyecto
    Given el usuario tiene un proyecto que no desea mostrar
    When selecciona "eliminar"
    Then el proyecto desaparece de su portafolio

  Examples:
    | nombre_proyecto      | archivo_subido     | categoria       | accion     |
    | "Concept Art Dragón" | dragon.png         | "Criaturas"     | eliminar   |
