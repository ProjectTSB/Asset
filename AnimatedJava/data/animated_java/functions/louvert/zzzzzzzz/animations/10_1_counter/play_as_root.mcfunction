scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.louvert.animation.10_1_counter.local_anim_time 0
scoreboard players set @s aj.louvert.animation.10_1_counter.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:louvert/zzzzzzzz/animations/10_1_counter/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.louvert.animation.10_1_counter