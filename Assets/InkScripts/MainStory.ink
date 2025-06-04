-> start
=== start ===
// Novela Visual "Bienvenido a Dysaster, una novela visual donde deberás ir tomando decisiones, ¡lee cuidadosamente cada texto y piensa bien qué camino elegirás!
-> show_prison

=== show_prison ===
Prisión de Guantánamo, Cuba

Guardia_1 "¡Los infectados están entrando por el muro este! # background prison_inside

Guardia_2 "¡Invadieron la zona norte, el muro practicamente ya no existe!

Guardia_3 "¡Estamos teniendo una fuga de reclusos en la zona sur!

Guardia_4 "Acaban de confirmar que ÉL esta entre los que se han fugado.

-> norte_o_sur

=== norte_o_sur ===

# background norte_o_sur

fugitivo "¡Finalmente, después de 6 años, soy libre! 

fugitivo "¡Había estado esperando por este momento!

fugitivo "¡Dios, ya sabía acerca de esto, pero verlo en persona va más allá de mi imaginación!

¿Hacia dónde debería correr?
+ Correr hacia el norte 
    -> ir_al_norte
+ Correr hacia el sur 
    -> ir_al_sur


=== ir_al_norte ===

# background estacionamiento

Llega a un estacionamiento afuera de la prisión

Guardias se estan enfrentando con infectados

fugitivo "¡Rayos, si me ven estoy perdido!

¿Qué debería hacer?
+ Seguir corriendo
    -> seguir_corriendo
+ Esconderse detrás de un auto 
    -> esconderse_detras_del_auto

=== esconderse_detras_del_auto ===

# background esconderse_detras_del_auto

se oculta detrás de un automóvil estacionado

Personas civiles tratan de huir del lugar
fugitivo "¡Ábrete, ábrete!

Tratando de abrir la cerradura de un auto
fugitivo "Ah, Maldita sea

# background corre_de_los_infectados

Comienza a correr

# background nina_infectada

Una niña choca con él mientras corre, empujándole
fugitivo "Estúpida niña, fíjate por...
fugitivo "Un momento...

Se da cuenta que tiene una herida en su pierna
fugitivo "Ya veo

La niña pequeña resultó ser una infectada y una horda ya ha rodeado al prisionero
fugitivo "¿Con que así va a ser, verdad?

Saca un cuchillo oculto en su guante
fugitivo "¿Y qué estan esperando bastardos? ¡¡vengan por mí, que hoy es un gran día para morir!!

# background pelea_contra_infectados

Se lanza a pelear con los infectados

Después de un rato, tras estar luchando contra los infectados...

# background muere1

Termina completamente agotado y cae al piso, mueriendo casi al instante.

Bad Ending. 
-> GAME_OVER

=== seguir_corriendo ===

Sigue corriendo

# background nina_infectada

Se encuentra a una niña que parece estar sóla.
¿Cómo debo reaccionar?
+ Alejarse
    -> alejarse_de_la_nina
+ Intentar atacarla 
    -> atacar_a_la_nina

=== alejarse_de_la_nina ===

Al intentar alejarse lentamente, la niña se le acerca y lo alcanza a morder

Desesperado busca en los alrededores una casa donde pueda encontrar provisiones\
y medicamentos para sanar su herida.

A lo lejos alcanza a divisar dos casas...

¿A cuál de esas dos casas debería ir?
+ Ir a la primera
    -> primera_casa
+ Ir a la segunda 
    -> segunda_casa

=== primera_casa ===

fugitivo "¡Maldita sea! No encuentro nada útil en este lugar...
fugitivo "¡Me largo! Iré a la segunda casa

Entra en la segunda casa
-> segunda_casa

=== segunda_casa ===

fugitivo "¡Bingo, aquí hay medicamentos para curar mi herida!
Me curaré enseguida pero ¿qué haré después?
+ Curarse y descansar en la misma casa 
    -> curarse_y_quedarse
+ Curarse y escapar del lugar 
    -> curarse_y_escapar

=== curarse_y_quedarse ===

En la noche aparece una horda de zombies alertados por la mente colmena que poseen

Los zombies rodean la casa y empiezan a atacar
fugitivo "¡Ya no tengo alternativa!

# background muere1

Sin poder correr, es devorado por los zombies.
Bad Ending. 
-> GAME_OVER  

=== curarse_y_escapar ===

Al escapar se encuentra con un grupo de supervivientes

Lo aceptan y se queda a dormir en un refugio

fugitivo "Esconderé mi herida hasta que se haya sanado, quizás mañana estaré mejor.

# background muere1

En la noche sufre de un dolor intenso, queda inconsiente y se zombifica
Terrible Ending.
-> GAME_OVER

=== atacar_a_la_nina ===

Ataca a la niña, antes de lograr matarla es mordido gravemente
fugitivo "¡Mierda, esa maldita cría me ha mordido!

Escapa rápidamente del lugar
-> alejarse_de_la_nina_b

=== alejarse_de_la_nina_b ===

Desesperado busca en los alrededores una casa donde pueda encontrar provisiones\
y medicamentos para sanar su herida.

A lo lejos alcanza a divisar dos casas...

¿A cuál de esas dos casas debería ir?
+ Ir a la primera 
    -> primera_casa_b
+ Ir a la segunda 
    -> segunda_casa_b

=== primera_casa_b ===

fugitivo "¡Maldita sea! No hay nada útil en este lugar...
fugitivo "¡Me desangro! Iré a la segunda casa

Se dirige a la segunda casa
-> segunda_casa_b

=== segunda_casa_b ===

fugitivo "¡Hurra, encontré medicamentos para curar mi herida!

No se percata que había un zombie acechando en la casa

Forcejean y debido a la herida anterior, se desmaya

# background muere1

Muere en el lugar
Bad ending 
-> GAME_OVER


=== ir_al_sur ===

# background viendo_lancha

Al correr hacia el sur se encuentra una lancha

fugitivo "¡Perfecto, esto me será útil!

¿Debería revisar las provisiones?
+ Revisar ahora provisiones y nivel de combustible
    -> revisar_provisiones
* Revisar mas tarde
    -> revisar_despues

=== revisar_despues ===

# background zarpando

Se sube a una lancha y arranca
fugitivo "¡Hasta nunca, prisión de Guantánamo!

Se aleja en la lancha

# background sin_provisiones

No las revisa y se adentra en altamar Al tercer día se queda sin provisiones

# background muere_deshidratado

Una semana después muere por el hambre y la insolación
Bad Ending. 
-> GAME_OVER

=== revisar_provisiones ===

# background revisar_provisiones

fugitivo "Con esto podré vivir algunos días más

# background zarpando

Se sube a una lancha y arranca
fugitivo "¡Hasta nunca, Idiotas!

se aleja en la lancha

2 Días después...

El combustible esta empezando a escasear
* Aumentar Velocidad 
    -> ir_mas_rapido
+ Disminuir Velocidad 
    -> ir_mas_lento

=== ir_mas_rapido ===

# background sin_provisiones

Acelera la velocidad y queda sin combustible en altamar

# background muere_deshidratado

Días después muere por falta de provisiones

Bad Ending. 
-> GAME_OVER

=== ir_mas_lento ===

# background bulto_en_el_mar

Observa un objeto a cierta distancia en el oceano...
¿Pero qué es eso?, ¿será posible...?
+ Acercarse a examinar 
    -> examinar
* Seguir otro rumbo 
    -> seguir_otro_rumbo

=== examinar ===

# background encuentro

Apenas logra distinguir lo que parece una persona que él conocía...
¿Y este como logró llegar hasta aquí?
+ Rescatarlo 
    -> rescatarlo
* Dejarlo a su suerte 
    -> dejarlo

=== seguir_otro_rumbo ===

# background prison

Terminó llegando a tierra firme y se dió cuenta que había vuelto al punto de inicio...

# background detenido

Rápidamente fue descubierto por uno de los guardias que disparó sin dudar

# background encerrado

No logró llegar muy lejos, fue capturado y llevado a otra penitenciaría.
Bad Ending. 
-> GAME_OVER

=== dejarlo ===

# background tormenta

Al alejarse se dió cuenta que iba directo a un huracán...

# background huracan

Intentó saltar, pero fue peor, murió ahogado y su cuerpo fue arrastrado por el huracán.
Bad Ending. 
-> GAME_OVER

=== rescatarlo ===

# background naufrago_rescatado_despierta

Rescata a una persona que flotaba aún con vida en el mar...

Algunos minutos después el naufrago despierta...

Naufrago "¡No es posible! ¡¿Ignacio Villanueva?! 
Naufrago "¡Maldito Bastardo!

# background punetazo

Don Nacho "¡Es Don Nacho para tí!

Le da un puñetazo que lo hace caer

Naufrago "¡Me rompiste la nariz!

Don Nacho "¡No exageres!, además, ¿quién se supone que eres tú?

Naufrago "¿Nunca has oido de mi?, Yo soy el gran Robert "Bobby" Harrison

Don Nacho "Ah, el loco de los barcos gigantes

Harrison "Prefiero el termino "Excentrico"... 

Harrison "¡Hey!, ¿no se supone que deberías estar en prisión o algo?"

Don Nacho "Los tiempos han cambiado mi amigo, dime,\
¿cómo es que alguien como tú terminó este lugar?

Harrison "Bueno...

Harrison "En verdad es algo vergonzoso de admitir...

Harrison "Pero como tú ya sabrás, hace 6 años cuando condenaste \
al mundo a este apocalipsis zombie, o algo así...

Don Nacho "¡Que soy inocente maldita sea, y siempre lo he sido!

Harrison "Como sea, me di la tarea de intentar salvar \
la mayor cantidad de vidas posibles

Harrison "Construyendo una flota de super cruceros \
o ciudades flotantes como me gusta llamarlas a mí

Harrison "En donde la humanidad podría vivir tranquila \
y sin tener que preocuparse por esos infectados

Harrison "Pues es más que obvio que alguno de ellos\
jamás aparecería en medio del mar ...

Don Nacho "¡Ve al grano de una vez y ya!

Harrison "Vaya tipo más impaciente, en fin, hace poco \
realizamos en mi crucero personal una gran celebración

Harrison "Debí de haber bebido mucho alcohol porque lo último\
que recuerdo es que estaba sentando en una baranda cantando

Harrison "Quizá perdí el equilibrio lo que llevó a que me cayera al mar

Don Nacho "...

Don Nacho ""¿Aún tienen alcohol después de todos estos años?"

Harrison "Eh...

Harrison "Cambiando de tema, necesito regresar a mi \
barco así que voy a necesitar un aventón

Harrison "¿Qué me dices?, ¿podrías ayudarme a volver?

Harrison "Sería por unos buenos billetes o si lo prefieres\
puedo conseguirte una de las mejores habitaciones en mi barco

Harrison "¿Qué te parece?

Don Nacho "Veo que ustedes los snobs nunca salen de sus burbujas

Don Nacho "Primero, el dinero en esta era no es nada más \
que un simple papel sin valor

Don Nacho "Segundo, no tengo ni la menor idea en dónde \
pueda estar tu susodicho crucero y creo que tú tampoco

Don Nacho "Y tercero, ahora que estás aquí, tanto mis \
provisiones como el combustible de esta lancha estan al mínimo

Don Nacho "así que a menos que encontremos algo para reabastecernos,\
dudo que lleguemos con vida a la próxima semana

Harrison "...


Esa misma noche...

Una feroz tormenta en altamar

Harrison "¡¡Vamos a morir!!

Don Nacho "¡Cierra el hocico y sujétate de algo, no he llegado\
tan lejos solo para terminar muriendo por una maldita tormenta!

Don Nacho "Como si algo como esto pudiera detenerme

Harrison "¡Gira!, ¡¡GIRA!!

# background derribados_por_las_olas

La ola hunde la lancha

# background nadando_al_puerto

Harrison "¡Cómo me duele la cabeza!

Harrison "Hmm... ¿en dónde está ese sujeto?

Don Nacho a lo lejos observando hacia el horizonte

Don Nacho "¿Sigues con vida, eh?

# background nuevo_horizonte

Harrison "¿Alguna idea de dónde estamos?

Don Nacho "Colombia

Harrison "¿Y cómo lo sabes?

Don Nacho "¿Ves ese lugar al otro lado del mar?

Don Nacho "ese lugar es Puerto Bolivar, lo sé porque era \
uno de los puertos que solía usar en mi ruta de tráfico

Harrison "¿Y ahora qué?

Don Nacho "Hay que ir para allá, pues de seguro debe haber comida\
o herramientas que nos puedan ser de utilidad

* Ir por Tierra 
    -> tierra
+ Ir por Mar 
    -> mar

=== tierra ===

# background van_por_tierra

Cae la noche y corren sin muchas esperanzas

# background mueren_en_tierra

Finalmente se mueren al ser devorados por zombies

Bad ending 

-> GAME_OVER

=== mar ===

Don Nacho se tira al mar

Harrison "¿Qué estas haciendo?

Don Nacho "Es más seguro ir nadando hasta allí que ir por tierra,\
a menos que te quieras encontrar con algún infectado

Harrison "¿Acaso no podemos ir en un bote o algo?

Don Nacho "Parece que no tenemos una embarcación ...

Don Nacho "Por si no lo has notado, la tormenta no solo hundió la lancha

Don Nacho "También se llevó las pocas provisiones que iban quedando,\
así que no hay de otra

Don Nacho "Pero si prefieres quedarte aquí, es cosa tuya

Harrison "¡Espera un momento!

Don Nacho "¿Ahora qué quieres?, ¿acaso no sabes nadar?

Harrison "¡Pues claro que si sé!

Don Nacho "¿Entonces...?

Harrison "¡Al demonio con esto!

# background nadando_al_puerto

Harrison se lanza al mar

Ambos hombres comienzan a nadar en dirección a Puerto Bolivar

Horas más tarde...

# background provisiones_puerto

Puerto Bolivar, tras haber estado buscando por provisiones \
y herramientas por horas

Harrison "¡Encontré algo!, ¡ayúdame a levantar esto!

Don Nacho "Vaya vaya, con que aquí se escondía

Harrison "¿Sabes lo que es?

Don Nacho "La entrada secreta a una bodega subterránea\
que solían usar mis hombres en el pasado

Don Nacho "De seguro puede que aún deban haber algunos \
objetos interesantes allí dentro

Harrison "Realmente está oscuro aquí

+ Usar una linterna 
    -> linterna
* Usar un encendedor 
    -> encendedor

=== linterna ===

# background linterna

Don Nacho "Este lugar tiene demasiado olor a metano

Don Nacho "¡Y con razón, estas latas de gas están rotas!

Harrison "¡Tomemos lo que podamos y largémonos!

# background cajas_items

Don Nacho "¡No, es mejor revisarlo todo primero para \
después no tener que terminar cargando peso muerto!

Don Nacho "Con esto sera suficiente

Harrison "Bien, mejor que nos largemos cuanto antes de aquí,\
este lugar me eseta dando escalofríos

Don Nacho "Primero hay que encontrar algún vehículo,\
sino dudo que podamos salir intactos de esta zona

Una horda de infectados se esta acercando al área

Harrison "Ya anocheció

Don Nacho "¡Hay que andar con cautela, si hay infectados cerca,\
estamos bien jodidos, esos bastardos son más letales en la oscuridad!

# background salen_de_la_bodega

Ambos hombres salen de la bodega

Harrison "¡Oh,no! ¡Mira hacia allá, infectados!"

Don Nacho "Espera, no saben que nos encontramos aquí... Aun...

Harrison "¡¡Estamos perdidos!!, ¡es nuestro fin!


Continuará...
Good Ending. 
-> GAME_OVER

=== encendedor ===

# background explotan

Explotan
Bad Ending 
-> GAME_OVER

=== GAME_OVER ===

+ ¿Volver a empezar?
    -> welcome_back
+ Salir
    -> END

=== welcome_back ===

# background prison

fugitivo "y aquí vamos nuevamente...

-> show_prison