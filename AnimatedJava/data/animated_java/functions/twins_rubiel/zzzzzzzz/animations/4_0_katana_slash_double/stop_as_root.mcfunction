scoreboard players set @s aj.twins_rubiel.animation.4_0_katana_slash_double.local_anim_time 0
tag @s remove aj.twins_rubiel.animation.4_0_katana_slash_double
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.twins_rubiel.disable_command_keyframes
function animated_java:twins_rubiel/zzzzzzzz/animations/4_0_katana_slash_double/tree/leaf_0
tag @s remove aj.twins_rubiel.disable_command_keyframes