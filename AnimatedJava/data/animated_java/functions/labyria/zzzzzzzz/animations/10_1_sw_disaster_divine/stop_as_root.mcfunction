scoreboard players set @s aj.labyria.animation.10_1_sw_disaster_divine.local_anim_time 0
tag @s remove aj.labyria.animation.10_1_sw_disaster_divine
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.labyria.disable_command_keyframes
function animated_java:labyria/zzzzzzzz/animations/10_1_sw_disaster_divine/tree/leaf_0
tag @s remove aj.labyria.disable_command_keyframes