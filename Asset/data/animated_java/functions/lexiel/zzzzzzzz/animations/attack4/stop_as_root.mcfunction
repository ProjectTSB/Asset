scoreboard players set @s aj.lexiel.animation.attack4.local_anim_time 0
tag @s remove aj.lexiel.animation.attack4
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.lexiel.disable_command_keyframes
function animated_java:lexiel/zzzzzzzz/animations/attack4/tree/leaf_0
tag @s remove aj.lexiel.disable_command_keyframes