scoreboard players set @s aj.tultaria.animation.attack_melee_2_throw.local_anim_time 0
tag @s remove aj.tultaria.animation.attack_melee_2_throw
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.tultaria.disable_command_keyframes
function animated_java:tultaria/zzzzzzzz/animations/attack_melee_2_throw/tree/leaf_0
tag @s remove aj.tultaria.disable_command_keyframes