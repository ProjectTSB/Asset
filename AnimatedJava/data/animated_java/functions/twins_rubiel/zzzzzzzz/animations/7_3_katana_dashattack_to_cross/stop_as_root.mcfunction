scoreboard players set @s aj.twins_rubiel.animation.7_3_katana_dashattack_to_cross.local_anim_time 0
tag @s remove aj.twins_rubiel.animation.7_3_katana_dashattack_to_cross
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.twins_rubiel.disable_command_keyframes
function animated_java:twins_rubiel/zzzzzzzz/animations/7_3_katana_dashattack_to_cross/tree/leaf_0
tag @s remove aj.twins_rubiel.disable_command_keyframes