-> start
=== start ===
-> show_prison

=== show_prison ===
A: AAA
* ¿Hacia dónde debería correr?
    + [Correr hacia el norte]
        -> ir_al_norte
    + [Correr hacia el sur]
        -> ir_al_sur
- -> escape

=== norte_o_sur ===
¿Correrá hacia el norte o haica el sur?
* Correr hacia el norte
    -> ir_al_norte
* Correr hacia el sur
    -> ir_al_sur

=== ir_al_norte ===
The walls are damp and grim.
MyCharacter: Wait, I see a way out!
-> escape

=== ir_al_sur ===
The walls are damp and grim.
MyCharacter: Wait, I see a way out!
-> escape

=== escape ===
MyCharacter: Freedom at last!
* [Continue]
    -> DONE