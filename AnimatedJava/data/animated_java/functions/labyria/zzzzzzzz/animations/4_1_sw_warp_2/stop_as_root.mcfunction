scoreboard players set @s aj.labyria.animation.4_1_sw_warp_2.local_anim_time 0
tag @s remove aj.labyria.animation.4_1_sw_warp_2
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.labyria.disable_command_keyframes
function animated_java:labyria/zzzzzzzz/animations/4_1_sw_warp_2/tree/leaf_0
tag @s remove aj.labyria.disable_command_keyframes