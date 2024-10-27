scoreboard players set @s aj.labyria.animation.2_1_ms_move_start.local_anim_time 0
tag @s remove aj.labyria.animation.2_1_ms_move_start
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.labyria.disable_command_keyframes
function animated_java:labyria/zzzzzzzz/animations/2_1_ms_move_start/tree/leaf_0
tag @s remove aj.labyria.disable_command_keyframes