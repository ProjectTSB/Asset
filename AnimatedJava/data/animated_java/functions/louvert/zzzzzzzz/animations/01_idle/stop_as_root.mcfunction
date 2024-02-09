scoreboard players set @s aj.louvert.animation.01_idle.local_anim_time 0
tag @s remove aj.louvert.animation.01_idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.louvert.disable_command_keyframes
function animated_java:louvert/zzzzzzzz/animations/01_idle/tree/leaf_0
tag @s remove aj.louvert.disable_command_keyframes