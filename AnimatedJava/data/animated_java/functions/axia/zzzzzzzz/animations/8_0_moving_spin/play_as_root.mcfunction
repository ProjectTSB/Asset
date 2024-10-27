scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.axia.animation.8_0_moving_spin.local_anim_time 0
scoreboard players set @s aj.axia.animation.8_0_moving_spin.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:axia/zzzzzzzz/animations/8_0_moving_spin/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.axia.animation.8_0_moving_spin