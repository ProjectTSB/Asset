scoreboard players set @s aj.axia.animation.15_0_former_ending.local_anim_time 0
tag @s remove aj.axia.animation.15_0_former_ending
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.axia.disable_command_keyframes
function animated_java:axia/zzzzzzzz/animations/15_0_former_ending/tree/leaf_0
tag @s remove aj.axia.disable_command_keyframes