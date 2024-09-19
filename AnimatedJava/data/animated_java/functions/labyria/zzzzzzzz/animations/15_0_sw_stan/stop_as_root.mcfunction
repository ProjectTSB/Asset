scoreboard players set @s aj.labyria.animation.15_0_sw_stan.local_anim_time 0
tag @s remove aj.labyria.animation.15_0_sw_stan
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.labyria.disable_command_keyframes
function animated_java:labyria/zzzzzzzz/animations/15_0_sw_stan/tree/leaf_0
tag @s remove aj.labyria.disable_command_keyframes