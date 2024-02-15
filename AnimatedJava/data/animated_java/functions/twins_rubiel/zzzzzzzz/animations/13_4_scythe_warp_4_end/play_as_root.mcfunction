scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.twins_rubiel.animation.13_4_scythe_warp_4_end.local_anim_time 0
scoreboard players set @s aj.twins_rubiel.animation.13_4_scythe_warp_4_end.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:twins_rubiel/zzzzzzzz/animations/13_4_scythe_warp_4_end/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.twins_rubiel.animation.13_4_scythe_warp_4_end