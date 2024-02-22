scoreboard players set @s aj.twins_sapphiel.animation.40_0_damage.local_anim_time 0
tag @s remove aj.twins_sapphiel.animation.40_0_damage
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.twins_sapphiel.disable_command_keyframes
function animated_java:twins_sapphiel/zzzzzzzz/animations/40_0_damage/tree/leaf_0
tag @s remove aj.twins_sapphiel.disable_command_keyframes