scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.axia.animation.6_0_moving_forward.local_anim_time 0
scoreboard players set @s aj.axia.animation.6_0_moving_forward.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:axia/zzzzzzzz/animations/6_0_moving_forward/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.axia.animation.6_0_moving_forward