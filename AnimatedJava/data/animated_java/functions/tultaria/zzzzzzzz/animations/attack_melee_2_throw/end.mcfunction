execute if score @s aj.tultaria.animation.attack_melee_2_throw.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:tultaria/zzzzzzzz/animations/attack_melee_2_throw/end_loop
execute if score @s aj.tultaria.animation.attack_melee_2_throw.loop_mode = $aj.loop_mode.once aj.i run function animated_java:tultaria/animations/attack_melee_2_throw/stop
execute if score @s aj.tultaria.animation.attack_melee_2_throw.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:tultaria/animations/attack_melee_2_throw/pause