scoreboard players set @s aj.louvert.animation.05_1_blade_cutter.local_anim_time 0
tag @s remove aj.louvert.animation.05_1_blade_cutter
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.louvert.disable_command_keyframes
function animated_java:louvert/zzzzzzzz/animations/05_1_blade_cutter/tree/leaf_0
tag @s remove aj.louvert.disable_command_keyframes