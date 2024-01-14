scoreboard players set @s aj.twins_sapphiel.animation.5_2_hg_kickcombo.local_anim_time 0
tag @s remove aj.twins_sapphiel.animation.5_2_hg_kickcombo
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.twins_sapphiel.disable_command_keyframes
function animated_java:twins_sapphiel/zzzzzzzz/animations/5_2_hg_kickcombo/tree/leaf_0
tag @s remove aj.twins_sapphiel.disable_command_keyframes