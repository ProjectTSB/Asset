scoreboard players set @s aj.twins_rubiel.animation.13_0_scythe_warp_0.local_anim_time 0
tag @s remove aj.twins_rubiel.animation.13_0_scythe_warp_0
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.twins_rubiel.disable_command_keyframes
function animated_java:twins_rubiel/zzzzzzzz/animations/13_0_scythe_warp_0/tree/leaf_0
tag @s remove aj.twins_rubiel.disable_command_keyframes