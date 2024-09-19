scoreboard players set @s aj.labyria.animation.9_0_sw_nova_bomb.local_anim_time 0
tag @s remove aj.labyria.animation.9_0_sw_nova_bomb
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.labyria.disable_command_keyframes
function animated_java:labyria/zzzzzzzz/animations/9_0_sw_nova_bomb/tree/leaf_0
tag @s remove aj.labyria.disable_command_keyframes