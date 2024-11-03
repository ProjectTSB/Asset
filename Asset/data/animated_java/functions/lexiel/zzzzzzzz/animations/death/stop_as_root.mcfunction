scoreboard players set @s aj.lexiel.animation.death.local_anim_time 0
tag @s remove aj.lexiel.animation.death
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.lexiel.disable_command_keyframes
function animated_java:lexiel/zzzzzzzz/animations/death/tree/leaf_0
tag @s remove aj.lexiel.disable_command_keyframes