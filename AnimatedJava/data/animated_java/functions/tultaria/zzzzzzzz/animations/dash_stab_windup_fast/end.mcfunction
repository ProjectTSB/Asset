execute if score @s aj.tultaria.animation.dash_stab_windup_fast.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:tultaria/zzzzzzzz/animations/dash_stab_windup_fast/end_loop
execute if score @s aj.tultaria.animation.dash_stab_windup_fast.loop_mode = $aj.loop_mode.once aj.i run function animated_java:tultaria/animations/dash_stab_windup_fast/stop
execute if score @s aj.tultaria.animation.dash_stab_windup_fast.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:tultaria/animations/dash_stab_windup_fast/pause