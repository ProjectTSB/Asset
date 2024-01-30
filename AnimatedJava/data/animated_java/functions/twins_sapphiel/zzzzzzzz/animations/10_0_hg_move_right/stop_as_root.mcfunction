scoreboard players set @s aj.twins_sapphiel.animation.10_0_hg_move_right.local_anim_time 0
tag @s remove aj.twins_sapphiel.animation.10_0_hg_move_right
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.twins_sapphiel.disable_command_keyframes
function animated_java:twins_sapphiel/zzzzzzzz/animations/10_0_hg_move_right/tree/leaf_0
tag @s remove aj.twins_sapphiel.disable_command_keyframes