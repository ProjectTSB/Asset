scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.louvert.animation.05_1_blade_cutter.local_anim_time 0
scoreboard players set @s aj.louvert.animation.05_1_blade_cutter.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:louvert/zzzzzzzz/animations/05_1_blade_cutter/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.louvert.animation.05_1_blade_cutter