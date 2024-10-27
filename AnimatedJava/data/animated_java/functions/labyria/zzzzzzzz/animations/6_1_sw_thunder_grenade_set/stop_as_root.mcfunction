scoreboard players set @s aj.labyria.animation.6_1_sw_thunder_grenade_set.local_anim_time 0
tag @s remove aj.labyria.animation.6_1_sw_thunder_grenade_set
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.labyria.disable_command_keyframes
function animated_java:labyria/zzzzzzzz/animations/6_1_sw_thunder_grenade_set/tree/leaf_0
tag @s remove aj.labyria.disable_command_keyframes