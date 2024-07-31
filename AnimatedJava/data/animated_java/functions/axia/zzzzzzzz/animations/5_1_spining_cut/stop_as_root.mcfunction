scoreboard players set @s aj.axia.animation.5_1_spining_cut.local_anim_time 0
tag @s remove aj.axia.animation.5_1_spining_cut
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.axia.disable_command_keyframes
function animated_java:axia/zzzzzzzz/animations/5_1_spining_cut/tree/leaf_0
tag @s remove aj.axia.disable_command_keyframes