scoreboard players set @s aj.axia.animation.10_2_warp_slash_1.local_anim_time 0
tag @s remove aj.axia.animation.10_2_warp_slash_1
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.axia.disable_command_keyframes
function animated_java:axia/zzzzzzzz/animations/10_2_warp_slash_1/tree/leaf_0
tag @s remove aj.axia.disable_command_keyframes