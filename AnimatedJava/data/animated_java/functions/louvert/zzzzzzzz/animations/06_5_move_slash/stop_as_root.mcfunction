scoreboard players set @s aj.louvert.animation.06_5_move_slash.local_anim_time 0
tag @s remove aj.louvert.animation.06_5_move_slash
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.louvert.disable_command_keyframes
function animated_java:louvert/zzzzzzzz/animations/06_5_move_slash/tree/leaf_0
tag @s remove aj.louvert.disable_command_keyframes