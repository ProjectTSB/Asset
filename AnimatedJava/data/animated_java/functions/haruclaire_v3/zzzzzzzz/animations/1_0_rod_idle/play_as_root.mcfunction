scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.haruclaire_v3.animation.1_0_rod_idle.local_anim_time 0
scoreboard players set @s aj.haruclaire_v3.animation.1_0_rod_idle.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:haruclaire_v3/zzzzzzzz/animations/1_0_rod_idle/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.haruclaire_v3.animation.1_0_rod_idle