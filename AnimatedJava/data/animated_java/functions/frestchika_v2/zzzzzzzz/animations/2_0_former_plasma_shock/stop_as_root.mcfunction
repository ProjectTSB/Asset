scoreboard players set @s aj.frestchika_v2.animation.2_0_former_plasma_shock.local_anim_time 0
tag @s remove aj.frestchika_v2.animation.2_0_former_plasma_shock
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.frestchika_v2.disable_command_keyframes
function animated_java:frestchika_v2/zzzzzzzz/animations/2_0_former_plasma_shock/tree/leaf_0
tag @s remove aj.frestchika_v2.disable_command_keyframes