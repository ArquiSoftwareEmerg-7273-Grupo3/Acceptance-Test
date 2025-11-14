Feature: Publicación de posts

  Scenario Outline: Crear post
    Given el usuario se encuentra en la sección de inicio
    When selecciona "crear post"
    And completa el contenido requerido "<contenido>"
    Then el post se publica en el feed

  Scenario: Visualizar post publicado
    Given el usuario publicó un post
    When regresa al inicio
    Then puede ver su publicación junto a las de otros usuarios

  Examples:
    | contenido                |
    | "Hoy comencé un nuevo proyecto creativo" |
