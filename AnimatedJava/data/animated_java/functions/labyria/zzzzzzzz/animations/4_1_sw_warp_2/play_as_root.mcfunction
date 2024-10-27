scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.labyria.animation.4_1_sw_warp_2.local_anim_time 0
scoreboard players set @s aj.labyria.animation.4_1_sw_warp_2.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:labyria/zzzzzzzz/animations/4_1_sw_warp_2/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.labyria.animation.4_1_sw_warp_2