-> start
=== start ===
// Novela Visual "Bienvenido a Dysaster, una novela visual donde deberás ir tomando decisiones, ¡lee cuidadosamente cada texto y piensa bien qué camino elegirás!
-> show_prison

=== show_prison ===
Prisión de Guantánamo, Cuba
fugitivo "¡Finalmente después de muchos años soy libre!
El fugitivo acaba de escapar de la prisión, evadiendo a los guardias de todos lados.
Pero ahora ha llegado el momento decisivo...
# wait 0.5
-> norte_o_sur

=== norte_o_sur ===
fugitivo "¡Dos caminos y ninguno pareciera darme alguna pista!
¿Hacia dónde debería correr?
    + [Correr hacia el norte]
        -> ir_al_norte
    + [Correr hacia el sur]
        -> ir_al_sur

=== ir_al_norte ===
* Seguir corriendo
    -> seguir_corriendo
* Esconderse detrás de un auto
    -> esconderse_detras_del_auto

=== esconderse_detras_del_auto ===
-> fin
DONE

=== seguir_corriendo ===
* Alejarse
    -> alejarse_de_la_nina
* Intentar atacarla
    -> atacar_a_la_nina

=== alejarse_de_la_nina ===
* Ir a la primera
    -> primera_casa
* Ir a la segunda
    -> segunda_casa

=== primera_casa ===
-> segunda_casa

=== segunda_casa ===
* Curarse y descansar en la misma casa
    -> curarse_y_quedarse
* Curarse y escapar del lugar
    -> curarse_y_escapar

=== curarse_y_quedarse ===
-> fin
DONE

=== curarse_y_escapar ===
-> fin
DONE

=== atacar_a_la_nina ===
-> alejarse_de_la_nina_b

=== alejarse_de_la_nina_b ===
* Ir a la primera
    -> primera_casa_b
* Ir a la segunda
    -> segunda_casa_b

=== primera_casa_b ===
-> segunda_casa_b

=== segunda_casa_b ===
-> fin
DONE

=== ir_al_sur ===
* Revisar ahora provisiones y nivel de combustible
    -> revisar_provisiones
* Revisar mas tarde
    -> revisar_despues

=== revisar_despues ===
-> fin
DONE

=== revisar_provisiones ===
* Aumentar Velocidad
    -> ir_mas_rapido
* Disminuir Velocidad
    -> ir_mas_lento

=== ir_mas_rapido ===
-> fin
DONE

=== ir_mas_lento ===
* Acercarse a examinar
    -> examinar
* Seguir otro rumbo
    -> seguir_otro_rumbo

=== examinar ===
* Rescatarlo
    -> rescatarlo
* Dejarlo a su suerte
    -> dejarlo

=== seguir_otro_rumbo ===
-> fin
DONE

=== dejarlo ===
-> fin
DONE

=== rescatarlo ===
* Ir por Tierra
    -> tierra
* Ir por Mar
    -> mar

=== tierra ===
-> fin
DONE

=== mar ===
* Usar una linterna
    -> linterna
* Usar un encendedor
    -> encendedor

=== linterna ===
-> fin
DONE

=== encendedor ===
-> fin
DONE

=== fin ===
Game over
-> DONE