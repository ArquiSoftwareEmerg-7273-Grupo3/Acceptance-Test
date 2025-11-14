Feature: Reporte de publicaciones

  Scenario: Mostrar opción de reporte
    Given el usuario observa un post
    When abre el menú de opciones
    Then aparece la opción "reportar"

  Scenario Outline: Confirmar reporte
    Given el usuario seleccionó "reportar" por el motivo "<motivo>"
    When confirma la acción
    Then el reporte queda registrado para revisión del administrador

  Examples:
    | motivo                    |
    | "Contenido ofensivo"     |
    | "Spam"                   |
    | "Información falsa"      |
