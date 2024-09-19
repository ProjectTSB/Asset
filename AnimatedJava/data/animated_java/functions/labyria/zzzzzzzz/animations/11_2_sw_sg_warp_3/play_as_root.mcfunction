scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.labyria.animation.11_2_sw_sg_warp_3.local_anim_time 0
scoreboard players set @s aj.labyria.animation.11_2_sw_sg_warp_3.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:labyria/zzzzzzzz/animations/11_2_sw_sg_warp_3/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.labyria.animation.11_2_sw_sg_warp_3