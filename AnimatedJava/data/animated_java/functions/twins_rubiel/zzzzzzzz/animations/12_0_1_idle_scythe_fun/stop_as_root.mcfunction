scoreboard players set @s aj.twins_rubiel.animation.12_0_1_idle_scythe_fun.local_anim_time 0
tag @s remove aj.twins_rubiel.animation.12_0_1_idle_scythe_fun
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.twins_rubiel.disable_command_keyframes
function animated_java:twins_rubiel/zzzzzzzz/animations/12_0_1_idle_scythe_fun/tree/leaf_0
tag @s remove aj.twins_rubiel.disable_command_keyframes