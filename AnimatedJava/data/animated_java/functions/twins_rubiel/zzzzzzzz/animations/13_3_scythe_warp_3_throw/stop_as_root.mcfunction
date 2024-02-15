scoreboard players set @s aj.twins_rubiel.animation.13_3_scythe_warp_3_throw.local_anim_time 0
tag @s remove aj.twins_rubiel.animation.13_3_scythe_warp_3_throw
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.twins_rubiel.disable_command_keyframes
function animated_java:twins_rubiel/zzzzzzzz/animations/13_3_scythe_warp_3_throw/tree/leaf_0
tag @s remove aj.twins_rubiel.disable_command_keyframes