scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.lexiel.animation.attack4.local_anim_time 0
scoreboard players set @s aj.lexiel.animation.attack4.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:lexiel/zzzzzzzz/animations/attack4/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.lexiel.animation.attack4