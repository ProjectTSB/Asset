scoreboard players set @s aj.louvert.animation.12_1_opening.local_anim_time 0
tag @s remove aj.louvert.animation.12_1_opening
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.louvert.disable_command_keyframes
function animated_java:louvert/zzzzzzzz/animations/12_1_opening/tree/leaf_0
tag @s remove aj.louvert.disable_command_keyframes