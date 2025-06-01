// Global variables and settings
VAR save_name = "iNiCiO"
LIST items_bodega = (none), wooden_crates, cardboard_boxes, metal_box, plastic_box, metal_cylinder, cooler
VAR items_count = 6

// Character definitions (colors and styling handled in Unity/Fungus)
=== function CharacterName(name) ===
{ name:
    - "fugitivo": ???
    - "narco": Don Nacho
    - "naufrago": Naufrago
    - "empresario": Harrison
    - "guardia_1": Guardia 1
    - "guardia_2": Guardia 2
    - "guardia_3": Guardia 3
    - "guardia_4": Guardia 4
    - else: {name}
}

// Start of the game
=== start ===
#scene: black # Unity/Fungus: Set black background
#music: stop fadeout 2.0 # Unity/Fungus: Stop menu music
#music: play /audio/bg-theme.mp3 # Unity/Fungus: Play background theme

// Disclaimer
Disclaimer
The following work is a fictional piece that may contain sensitive or offensive material for some people. Any resemblance to real persons, dialogues, elements, or stories is purely coincidental. All content presented in this game is entirely fictional. By launching the game executable (dysaster.exe), you automatically waive any potential lawsuits or other legal actions against Team Walala and all its members.
© 2021 Team Walala
#pause: 1.0 # Unity/Fungus: Pause for 1 second

// Prison scene
#scene: bg_prison # Unity/Fungus: Set prison background
* [Prisión de Guantánamo, Cuba] # Unity/Fungus: Centered, italicized text
    -> prison_guards

=== prison_guards ===
#scene: bg_guard_1 # Unity/Fungus: Set guard_1 background with zoom 2.0, xoffset -250, yoffset -550
guardia_1: ¡Los infectados están entrando por el muro este!
#scene: bg_guard_2 # Unity/Fungus: Set guard_2 background with zoom 2.0, xoffset -450, yoffset -500
guardia_2: ¡Invadieron la zona norte, el muro prácticamente ya no existe!
#scene: bg_guard_3 # Unity/Fungus: Set guard_3 background with zoom 2.0, xoffset -750, yoffset -400
guardia_3: ¡Estamos teniendo una fuga de reclusos en la zona sur!
#scene: bg_guard_4 # Unity/Fungus: Set guard_4 background with zoom 2.0, xoffset -1100, yoffset -350
guardia_4: Acaban de confirmar que ÉL está entre los que se han fugado.
-> forest_escape

=== forest_escape ===
#scene: bg_forest # Unity/Fungus: Set forest background
#sprite: fugitive_one zoom 1.5 xoffset 450 yoffset 50 # Unity/Fungus: Show fugitive sprite
fugitivo: ¡Finalmente, después de 6 años, soy libre!
fugitivo: ¡Había estado esperando por este momento!
#scene: bg_zombies # Unity/Fungus: Set zombies background
fugitivo: ¡Dios, ya sabía acerca de esto, pero verlo en persona va más allá de mi imaginación!
#scene: bg_norte_sur # Unity/Fungus: Set norte_sur background
~ save_name = "eL eScAPe"
* ¿Hacia dónde debería correr?
    + [Correr hacia el norte]
        -> ir_al_norte
    + [Correr hacia el sur]
        -> ir_al_sur

=== ir_al_norte ===
#context: Llega a un estacionamiento afuera de la prisión # Unity/Fungus: Centered, italicized text
#scene: bg_parking # Unity/Fungus: Set parking background
fugitivo: (¡Necesito salir de aquí, pero ya!)
#context: Guardias se están enfrentando con infectados # Unity/Fungus: Centered, italicized text
#sprite: fugitive_one animate xzoom -1.0 linear 0.5 xalign 0.5 # Unity/Fungus: Animate fugitive sprite
#sprite: fugitive_one animate xzoom 1.0 linear 0.5 xalign 0.5 # Unity/Fungus: Continue animation
#sprite: fugitive_one animate xzoom -1.0 linear 0.5 xalign 0.5 # Unity/Fungus: Continue animation
#sprite: fugitive_one animate xzoom 1.0 linear 0.5 xalign 0.5 # Unity/Fungus: Finish animation
fugitivo: ¡Rayos, si me ven estoy perdido!
* ¿Qué debería hacer?
    + [Seguir corriendo]
        -> seguir_corriendo
    + [Esconderse detrás de un auto]
        -> esconderse_detras_del_auto

=== esconderse_detras_del_auto ===
#context: Se oculta detrás de un automóvil estacionado # Unity/Fungus: Centered, italicized text
#context: Personas civiles tratan de huir del lugar # Unity/Fungus: Centered, italicized text
fugitivo: ¡Ábrete, ábrete!
#context: Tratando de abrir la cerradura de un auto # Unity/Fungus: Centered, italicized text
fugitivo: Ah, maldita sea
#context: Comienza a correr # Unity/Fungus: Centered, italicized text
#context: Una niña choca con él mientras corre, empujándole # Unity/Fungus: Centered, italicized text
fugitivo: Estúpida niña, fíjate por...
fugitivo: Un momento...
#context: Se da cuenta que tiene una herida en su pierna # Unity/Fungus: Centered, italicized text
fugitivo: Ya veo
#context: La niña pequeña resultó ser una infectada y una horda ya ha rodeado al prisionero # Unity/Fungus: Centered, italicized text
fugitivo: ¿Con que así va a ser, verdad?
#context: Saca un cuchillo oculto en su guante # Unity/Fungus: Centered, italicized text
fugitivo: ¿Y qué están esperando bastardos? ¡¡Vengan por mí, que hoy es un gran día para morir!!
#context: Se lanza a pelear con los infectados # Unity/Fungus: Centered, italicized text
#context: Después de un rato, tras estar luchando contra los infectados # Unity/Fungus: Centered, italicized text
#context: Termina completamente agotado y cae al piso, muriendo casi al instante # Unity/Fungus: Centered, italicized text
Bad Ending.
-> fin

=== seguir_corriendo ===
#context: Sigue corriendo # Unity/Fungus: Centered, italicized text
#context: Se encuentra a una niña que parece estar sola # Unity/Fungus: Centered, italicized text
* ¿Cómo debo reaccionar?
    + [Alejarse]
        -> alejarse_de_la_nina
    + [Intentar atacarla]
        -> atacar_a_la_nina

=== alejarse_de_la_nina ===
#context: Al intentar alejarse lentamente, la niña se le acerca y lo alcanza a morder # Unity/Fungus: Centered, italicized text
#context: Desesperado busca en los alrededores una casa donde pueda encontrar provisiones y medicamentos para sanar su herida # Unity/Fungus: Centered, italicized text
#context: A lo lejos alcanza a divisar dos casas... # Unity/Fungus: Centered, italicized text
#scene: bg_houses # Unity/Fungus: Set houses background
* ¿A cuál de esas dos casas debería ir?
    + [Ir a la primera]
        -> primera_casa
    + [Ir a la segunda]
        -> segunda_casa

=== primera_casa ===
#scene: bg_attic # Unity/Fungus: Set attic background
fugitivo: ¡Maldita sea! No encuentro nada útil en este lugar...
fugitivo: ¡Me largo! Iré a la segunda casa
#context: Entra en la segunda casa # Unity/Fungus: Centered, italicized text
-> segunda_casa

=== segunda_casa ===
#scene: bg_hallway # Unity/Fungus: Set hallway background
fugitivo: ¡Bingo, aquí hay medicamentos para curar mi herida!
* Me curaré enseguida pero ¿qué haré después?
    + [Curarse y descansar en la misma casa]
        -> curarse_y_quedarse
    + [Curarse y escapar del lugar]
        -> curarse_y_escapar

=== curarse_y_quedarse ===
#context: En la noche aparece una horda de zombies alertados por la mente colmena que poseen # Unity/Fungus: Centered, italicized text
#context: Los zombies rodean la casa y empiezan a atacar # Unity/Fungus: Centered, italicized text
fugitivo: ¡Ya no tengo alternativa!
#context: Sin poder correr, es devorado por los zombies # Unity/Fungus: Centered, italicized text
Bad Ending.
-> fin

=== curarse_y_escapar ===
#scene: bg_refuge # Unity/Fungus: Set refuge background
#context: Al escapar se encuentra con un grupo de sobrevivientes # Unity/Fungus: Centered, italicized text
#context: Lo aceptan y se queda a dormir en un refugio # Unity/Fungus: Centered, italicized text
#sprite: fugitive_one xoffset 450 yoffset 50 # Unity/Fungus: Show fugitive sprite
fugitivo: Esconderé mi herida hasta que se haya sanado, quizás mañana estaré mejor.
#context: En la noche sufre de un dolor intenso, queda inconsciente y se zombifica # Unity/Fungus: Centered, italicized text
Terrible Ending.
-> fin

=== atacar_a_la_nina ===
#context: Ataca a la niña, antes de lograr matarla es mordido gravemente # Unity/Fungus: Centered, italicized text
fugitivo: ¡Mierda, esa maldita cría me ha mordido!
#context: Escapa rápidamente del lugar # Unity/Fungus: Centered, italicized text
-> alejarse_de_la_nina_b

=== alejarse_de_la_nina_b ===
#context: Desesperado busca en los alrededores una casa donde pueda encontrar provisiones y medicamentos para sanar su herida # Unity/Fungus: Centered, italicized text
#context: A lo lejos alcanza a divisar dos casas... # Unity/Fungus: Centered, italicized text
#scene: bg_houses # Unity/Fungus: Set houses background
* ¿A cuál de esas dos casas debería ir?
    + [Ir a la primera]
        -> primera_casa_b
    + [Ir a la segunda]
        -> segunda_casa_b

=== primera_casa_b ===
#scene: bg_attic # Unity/Fungus: Set attic background
fugitivo: ¡Maldita sea! No hay nada útil en este lugar...
fugitivo: ¡Me desangro! Iré a la segunda casa
#context: Se dirige a la segunda casa # Unity/Fungus: Centered, italicized text
-> segunda_casa_b

=== segunda_casa_b ===
#scene: bg_hallway xzoom -1.0 # Unity/Fungus: Set hallway background with xzoom
fugitivo: ¡Hurra, encontré medicamentos para curar mi herida!
#context: No se percata que había un zombie acechando en la casa # Unity/Fungus: Centered, italicized text
#context: Forcejean y debido a la herida anterior, se desmaya # Unity/Fungus: Centered, italicized text
#context: Muere en el lugar # Unity/Fungus: Centered, italicized text
Bad Ending.
-> fin

=== ir_al_sur ===
#scene: bg_boat # Unity/Fungus: Set boat background
#sprite: lancha_agua zoom 1.0 xoffset 300 yoffset 300 # Unity/Fungus: Show boat sprite
fugitivo: ¡Perfecto, esto me será útil!
* ¿Debería revisar las provisiones?
    + [Revisar ahora provisiones y nivel de combustible]
        -> revisar_provisiones
    + [Revisar más tarde]
        -> revisar_despues

=== revisar_despues ===
#context: Se sube a una lancha y arranca # Unity/Fungus: Centered, italicized text
fugitivo: ¡Hasta nunca, idiotas!
#context: Se aleja en la lancha # Unity/Fungus: Centered, italicized text
* [No las revisa y se adentra en altamar] # Unity/Fungus: Centered, italicized text
    Al tercer día se queda sin provisiones.
    Una semana después muere por el hambre y la insolación.
    Bad Ending.
    -> fin

=== revisar_provisiones ===
Con esto podré vivir algunos días más.
fugitivo: ¡Hasta nunca, idiotas!
#scene: black # Unity/Fungus: Set black background
* [2 Días después...] # Unity/Fungus: Centered, italicized text
    #scene: bg_boat # Unity/Fungus: Set boat background
    * El combustible está empezando a escasear
        + [Aumentar velocidad]
            -> ir_mas_rapido
        + [Disminuir velocidad]
            -> ir_mas_lento

=== ir_mas_rapido ===
* [Acelera la velocidad y queda sin combustible en altamar] # Unity/Fungus: Centered, italicized text
    Días después muere por falta de provisiones.
    Bad Ending.
    -> fin

=== ir_mas_lento ===
#context: Observa un objeto a cierta distancia en el océano... # Unity/Fungus: Centered, italicized text
* ¿Pero qué es eso?, ¿será posible...?
    + [Acercarse a examinar]
        -> examinar
    + [Seguir otro rumbo]
        -> seguir_otro_rumbo

=== examinar ===
#context: Apenas logra distinguir lo que parece una persona que él conocía... # Unity/Fungus: Centered, italicized text
* ¿Y este cómo logró llegar hasta aquí?
    + [Rescatarlo]
        ~ save_name = "SeGunDo-PeRsOnAjE"
        -> rescatarlo
    + [Dejarlo a su suerte]
        -> dejarlo

=== seguir_otro_rumbo ===
* [Terminó llegando a tierra firme y se dio cuenta que había vuelto al punto de inicio...] # Unity/Fungus: Centered, italicized text
    Rápidamente fue descubierto por uno de los guardias que disparó sin dudar.
    No logró llegar muy lejos, fue capturado y llevado a otra penitenciaría.
    Bad Ending.
    -> fin

=== rescatarlo ===
#context: Rescata a una persona que flotaba aún con vida en el mar... # Unity/Fungus: Centered, italicized text
#context: Algunos minutos después el náufrago despierta... # Unity/Fungus: Centered, italicized text
#sprite: harrison_one zoom 1.5 xoffset 700 yoffset 50 # Unity/Fungus: Show Harrison sprite
naufrago: ¡No es posible! ¡¿Ignacio Villanueva?!
naufrago: ¡Maldito bastardo!
#sprite: fugitive_one zoom 1.5 xoffset 200 yoffset 50 # Unity/Fungus: Show fugitive sprite
fugitivo: ¡Es Don Nacho para ti!
#context: Le da un puñetazo que lo hace caer # Unity/Fungus: Centered, italicized text
naufrago: ¡Me rompiste la nariz!
narco: ¡No exageres!, además, ¿quién se supone que eres tú?
naufrago: ¿Nunca has oído de mí? Yo soy el gran Robert "Bobby" Harrison
narco: Ah, el loco de los barcos gigantes
empresario: Prefiero el término "excéntrico"...
empresario: ¡Hey!, ¿no se supone que deberías estar en prisión o algo?
narco: Los tiempos han cambiado mi amigo, dime, ¿cómo es que alguien como tú terminó en este lugar?
empresario: Bueno...
empresario: En verdad es algo vergonzoso de admitir...
empresario: Pero como tú ya sabrás, hace 6 años cuando condenaste al mundo a este apocalipsis zombie, o algo así...
narco: ¡Que soy inocente maldita sea, y siempre lo he sido!
empresario: Como sea, me di la tarea de intentar salvar la mayor cantidad de vidas posibles
empresario: Construyendo una flota de super cruceros o ciudades flotantes como me gusta llamarlas
empresario: En donde la humanidad podría vivir tranquila y sin tener que preocuparse por esos infectados
empresario: Pues es más que obvio que alguno de ellos jamás aparecería en medio del mar...
narco: ¡Ve al grano de una vez y ya!
empresario: Vaya tipo más impaciente, en fin, hace poco realizamos en mi crucero personal una gran celebración
empresario: Debí de haber bebido mucho alcohol porque lo último que recuerdo es que estaba sentado en una baranda cantando
empresario: Quizás perdí el equilibrio lo que llevó a que me cayera al mar
narco: ...
narco: ¿Aún tienen alcohol después de todos estos años?
empresario: Eh...
empresario: Cambiando de tema, necesito regresar a mi barco así que voy a necesitar un aventón
empresario: ¿Qué me dices?, ¿podrías ayudarme a volver?
empresario: Sería por unos buenos billetes o si lo prefieres puedo conseguirte una de las mejores habitaciones en mi barco
empresario: ¿Qué te parece?
narco: Veo que ustedes los snobs nunca salen de sus burbujas
narco: Primero, el dinero en esta era no es nada más que un simple papel sin valor
narco: Segundo, no tengo ni la menor idea en dónde pueda estar tu susodicho crucero y creo que tú tampoco
narco: Y tercero, ahora que estás aquí, tanto mis provisiones como el combustible de esta lancha están al mínimo
narco: Así que a menos que encontremos algo para reabastecernos, dudo que lleguemos con vida a la próxima semana
empresario: ...
#scene: black # Unity/Fungus: Set black background
* [Esa misma noche...] # Unity/Fungus: Centered, italicized text
    #scene: bg_waves # Unity/Fungus: Set waves background
    #context: Una feroz tormenta en altamar # Unity/Fungus: Centered, italicized text
    empresario: ¡¡Vamos a morir!!
    narco: ¡Cierra el hocico y sujétate de algo, no he llegado tan lejos solo para terminar muriendo por una maldita tormenta!
    narco: Como si algo como esto pudiera detenerme
    #context: La ola hunde la lancha # Unity/Fungus: Centered, italicized text
    #scene: bg_beach # Unity/Fungus: Set beach background
    #sprite: harrison_one zoom 1.5 xoffset 800 yoffset 50 # Unity/Fungus: Show Harrison sprite
    empresario: ¡Cómo me duele la cabeza!
    empresario: Hmm... ¿en dónde está ese sujeto?
    #context: Don Nacho a lo lejos observando hacia el horizonte # Unity/Fungus: Centered, italicized text
    #sprite: fugitive_one zoom 1.5 xoffset 100 yoffset 50 # Unity/Fungus: Show fugitive sprite
    narco: ¿Sigues con vida, eh?
    empresario: ¿Alguna idea de dónde estamos?
    narco: Colombia
    empresario: ¿Y cómo lo sabes?
    narco: ¿Ves ese lugar al otro lado del mar?
    narco: Ese lugar es Puerto Bolívar, lo sé porque era uno de los puertos que solía usar en mi ruta de tráfico
    empresario: ¿Y ahora qué?
    narco: Hay que ir para allá, pues de seguro debe haber comida o herramientas que nos puedan ser de utilidad
    * [Choose path]
        + [Ir por tierra]
            -> tierra
        + [Ir por mar]
            -> mar

=== dejarlo ===
* [Al alejarse se dio cuenta que iba directo a un huracán...] # Unity/Fungus: Centered, italicized text
    Intentó saltar, pero fue peor, murió ahogado y su cuerpo fue arrastrado por el huracán.
    Bad Ending.
    -> fin

=== tierra ===
Se mueren.
Bad Ending.
-> fin

=== mar ===
#context: Don Nacho se tira al mar # Unity/Fungus: Centered, italicized text
empresario: ¿Qué estás haciendo?
narco: Es más seguro ir nadando hasta allí que ir por tierra, a menos que te quieras encontrar con algún infectado
empresario: ¿Acaso no podemos ir en un bote o algo?
narco: Parece que no tenemos una embarcación...
narco: Por si no lo has notado, la tormenta no solo hundió la lancha
narco: También se llevó las pocas provisiones que iban quedando, así que no hay de otra
narco: Pero si prefieres quedarte aquí, es cosa tuya
empresario: ¡Espera un momento!
narco: ¿Ahora qué quieres?, ¿acaso no sabes nadar?
empresario: ¡Pues claro que sí sé!
narco: ¿Entonces...?
empresario: ¡Al demonio con esto!
#context: Harrison se lanza al mar # Unity/Fungus: Centered, italicized text
#context: Ambos hombres comienzan a nadar en dirección a Puerto Bolívar # Unity/Fungus: Centered, italicized text
#scene: black # Unity/Fungus: Set black background
* [Horas más tarde...] # Unity/Fungus: Centered, italicized text
    #context: Puerto Bolívar, tras haber estado buscando por provisiones y herramientas por horas # Unity/Fungus: Centered, italicized text
    empresario: ¡找到 algo!, ¡ayúdame a levantar esto!
    narco: Vaya vaya, con que aquí se escondía
    #scene: bg_bodega # Unity/Fungus: Set bodega background
    #sprite: harrison_one zoom 1.5 xoffset 700 yoffset 50 # Unity/Fungus: Show Harrison sprite
    #sprite: fugitive_one zoom 1.5 xoffset 200 yoffset 50 # Unity/Fungus: Show fugitive sprite
    empresario: ¿Sabes lo que es?
    narco: La entrada secreta a una bodega subterránea que solían usar mis hombres en el pasado
    narco: De seguro puede que aún deban haber algunos objetos interesantes allí dentro
    empresario: Realmente está oscuro aquí
    * [Choose tool]
        + [Usar una linterna]
            -> linterna
        + [Usar un encendedor]
            -> encendedor

=== linterna ===
narco: Este lugar tiene demasiado olor a metano
narco: ¡Y con razón, estas latas de gas están rotas!
empresario: ¡Tomemos lo que podamos y largémonos!
narco: ¡No, es mejor revisarlo todo primero para después no tener que terminar cargando peso muerto!
~ save_name = "ReViSaR_CajAs"
~ items_count = 6
-> check_boxes

=== check_boxes ===
{items_count > 0:
    ~ items_count -= 1
    -> check_boxes
- else:
    -> after_checking_boxes
}

=== after_checking_boxes ===
narco: Con esto será suficiente.
empresario: Bien, mejor que nos larguemos cuanto antes de aquí, este lugar me está dando escalofríos.
narco: Primero hay que encontrar algún vehículo, sino dudo que podamos salir intactos de esta zona.
#scene: bg_zombies # Unity/Fungus: Set zombies background
#context: Una horda de infectados se está acercando al área # Unity/Fungus: Centered, italicized text
#scene: bg_bodega # Unity/Fungus: Set bodega background
empresario: Ya anocheció.
narco: ¡Hay que andar con cautela, si hay infectados cerca, estamos bien jodidos, esos bastardos son más letales en la oscuridad!
#scene: bg_zombies # Unity/Fungus: Set zombies background
#context: Ambos hombres salen de la bodega # Unity/Fungus: Centered, italicized text
empresario: ¡Oh, no! ¡Mira hacia allá, infectados!
narco: Espera, no saben que nos encontramos aquí... Aun...
empresario: ¡¡Estamos perdidos!!, ¡es nuestro fin!
#scene: black # Unity/Fungus: Set black background
* [Continuará...] # Unity/Fungus: Centered, italicized text
    Continuará... (sólo si ganamos la DevJam ;) )
    Good Ending.
    -> fin

=== encendedor ===
Explotan.
Bad Ending.
-> fin

=== fin ===
Fin de la demo 0.1
-> END