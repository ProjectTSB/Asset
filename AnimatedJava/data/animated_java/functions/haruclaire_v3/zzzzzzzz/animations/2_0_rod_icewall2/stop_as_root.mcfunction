scoreboard players set @s aj.haruclaire_v3.animation.2_0_rod_icewall2.local_anim_time 0
tag @s remove aj.haruclaire_v3.animation.2_0_rod_icewall2
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.haruclaire_v3.disable_command_keyframes
function animated_java:haruclaire_v3/zzzzzzzz/animations/2_0_rod_icewall2/tree/leaf_0
tag @s remove aj.haruclaire_v3.disable_command_keyframes