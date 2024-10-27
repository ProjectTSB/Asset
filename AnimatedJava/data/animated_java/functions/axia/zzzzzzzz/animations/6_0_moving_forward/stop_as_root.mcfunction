scoreboard players set @s aj.axia.animation.6_0_moving_forward.local_anim_time 0
tag @s remove aj.axia.animation.6_0_moving_forward
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.axia.disable_command_keyframes
function animated_java:axia/zzzzzzzz/animations/6_0_moving_forward/tree/leaf_0
tag @s remove aj.axia.disable_command_keyframes