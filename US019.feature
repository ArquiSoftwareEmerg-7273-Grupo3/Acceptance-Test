Feature: Sistema de seguidores

  Scenario: Seguir a un usuario
    Given el usuario está en el perfil de otro usuario
    When selecciona "seguir"
    Then se añade a su lista de seguidos

  Scenario: Ver seguidores
    Given otro usuario lo ha seguido
    When revisa su perfil
    Then el nuevo seguidor aparece en su lista

  Examples:
    | usuario_actual | usuario_objetivo |
    | "carlos"       | "maria_gomez"    |
