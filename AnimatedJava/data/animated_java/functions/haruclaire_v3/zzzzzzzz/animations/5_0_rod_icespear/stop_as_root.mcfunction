scoreboard players set @s aj.haruclaire_v3.animation.5_0_rod_icespear.local_anim_time 0
tag @s remove aj.haruclaire_v3.animation.5_0_rod_icespear
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.haruclaire_v3.disable_command_keyframes
function animated_java:haruclaire_v3/zzzzzzzz/animations/5_0_rod_icespear/tree/leaf_0
tag @s remove aj.haruclaire_v3.disable_command_keyframes