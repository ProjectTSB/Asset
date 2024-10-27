scoreboard players set @s aj.labyria.animation.6_2_sw_thunder_grenade_end.local_anim_time 0
tag @s remove aj.labyria.animation.6_2_sw_thunder_grenade_end
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.labyria.disable_command_keyframes
function animated_java:labyria/zzzzzzzz/animations/6_2_sw_thunder_grenade_end/tree/leaf_0
tag @s remove aj.labyria.disable_command_keyframes