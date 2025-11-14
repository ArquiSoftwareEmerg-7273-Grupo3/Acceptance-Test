Feature: Comentarios en publicaciones

  Scenario Outline: Publicar comentario
    Given el usuario escribió un comentario "<comentario>"
    When presiona la opción "publicar"
    Then el comentario se añade debajo del post

  Scenario: Área de comentarios visible
    Given el usuario ve un post
    When selecciona el ícono de comentar
    Then el sistema muestra un campo para escribir su comentario

  Examples:
    | comentario                  |
    | "Excelente aporte, gracias" |
