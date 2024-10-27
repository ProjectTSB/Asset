scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.ecual.animation.11_1_damage_2.local_anim_time 0
scoreboard players set @s aj.ecual.animation.11_1_damage_2.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:ecual/zzzzzzzz/animations/11_1_damage_2/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.ecual.animation.11_1_damage_2