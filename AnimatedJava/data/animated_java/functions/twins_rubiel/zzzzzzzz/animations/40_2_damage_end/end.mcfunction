execute if score @s aj.twins_rubiel.animation.40_2_damage_end.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:twins_rubiel/zzzzzzzz/animations/40_2_damage_end/end_loop
execute if score @s aj.twins_rubiel.animation.40_2_damage_end.loop_mode = $aj.loop_mode.once aj.i run function animated_java:twins_rubiel/animations/40_2_damage_end/stop
execute if score @s aj.twins_rubiel.animation.40_2_damage_end.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:twins_rubiel/animations/40_2_damage_end/pause