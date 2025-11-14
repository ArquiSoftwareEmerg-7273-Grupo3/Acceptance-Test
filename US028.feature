Feature: Notificaciones de actividad

  Scenario: Notificación por nuevo comentario
    Given otro usuario comenta un post
    When se registra la acción
    Then el dueño del post recibe una notificación

  Scenario: Notificación por nueva puntuación
    Given otro usuario califica un post
    When se almacena la calificación
    Then se notifica al autor del post

  Scenario: Notificación por nueva postulación (escritor)
    Given un escritor publicó una oferta
    When un ilustrador se postula
    Then el sistema envía una notificación al escritor

  Examples:
    | autor_post      | usuario_interactor | tipo_interaccion |
    | "juan_perez"    | "ana_torres"       | "comentario"     |
