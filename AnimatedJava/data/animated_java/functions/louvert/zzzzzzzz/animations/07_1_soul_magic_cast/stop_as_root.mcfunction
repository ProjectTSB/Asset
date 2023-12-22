scoreboard players set @s aj.louvert.animation.07_1_soul_magic_cast.local_anim_time 0
tag @s remove aj.louvert.animation.07_1_soul_magic_cast
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.louvert.disable_command_keyframes
function animated_java:louvert/zzzzzzzz/animations/07_1_soul_magic_cast/tree/leaf_0
tag @s remove aj.louvert.disable_command_keyframes