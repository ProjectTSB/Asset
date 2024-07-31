scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.axia.animation.14_0_opening_attack.local_anim_time 0
scoreboard players set @s aj.axia.animation.14_0_opening_attack.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:axia/zzzzzzzz/animations/14_0_opening_attack/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.axia.animation.14_0_opening_attack