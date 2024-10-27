scoreboard players set @s aj.labyria.animation.5_0_sw_smoke_bomb.local_anim_time 0
tag @s remove aj.labyria.animation.5_0_sw_smoke_bomb
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.labyria.disable_command_keyframes
function animated_java:labyria/zzzzzzzz/animations/5_0_sw_smoke_bomb/tree/leaf_0
tag @s remove aj.labyria.disable_command_keyframes