scoreboard players set @s aj.labyria.animation.1_1_idle_musket.local_anim_time 0
tag @s remove aj.labyria.animation.1_1_idle_musket
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.labyria.disable_command_keyframes
function animated_java:labyria/zzzzzzzz/animations/1_1_idle_musket/tree/leaf_0
tag @s remove aj.labyria.disable_command_keyframes