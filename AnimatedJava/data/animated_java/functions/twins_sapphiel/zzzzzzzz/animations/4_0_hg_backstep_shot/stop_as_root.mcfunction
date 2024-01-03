scoreboard players set @s aj.twins_sapphiel.animation.4_0_hg_backstep_shot.local_anim_time 0
tag @s remove aj.twins_sapphiel.animation.4_0_hg_backstep_shot
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.twins_sapphiel.disable_command_keyframes
function animated_java:twins_sapphiel/zzzzzzzz/animations/4_0_hg_backstep_shot/tree/leaf_0
tag @s remove aj.twins_sapphiel.disable_command_keyframes