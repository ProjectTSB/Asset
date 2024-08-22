scoreboard players set @s aj.ecual.animation.1_0_idle.local_anim_time 0
tag @s remove aj.ecual.animation.1_0_idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.ecual.disable_command_keyframes
function animated_java:ecual/zzzzzzzz/animations/1_0_idle/tree/leaf_0
tag @s remove aj.ecual.disable_command_keyframes