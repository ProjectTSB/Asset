execute if score @s aj.twins_sapphiel.animation.40_3_damage_stun_start.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:twins_sapphiel/zzzzzzzz/animations/40_3_damage_stun_start/end_loop
execute if score @s aj.twins_sapphiel.animation.40_3_damage_stun_start.loop_mode = $aj.loop_mode.once aj.i run function animated_java:twins_sapphiel/animations/40_3_damage_stun_start/stop
execute if score @s aj.twins_sapphiel.animation.40_3_damage_stun_start.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:twins_sapphiel/animations/40_3_damage_stun_start/pause