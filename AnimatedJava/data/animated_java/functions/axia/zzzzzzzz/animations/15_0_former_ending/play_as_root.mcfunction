scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.axia.animation.15_0_former_ending.local_anim_time 0
scoreboard players set @s aj.axia.animation.15_0_former_ending.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:axia/zzzzzzzz/animations/15_0_former_ending/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.axia.animation.15_0_former_ending