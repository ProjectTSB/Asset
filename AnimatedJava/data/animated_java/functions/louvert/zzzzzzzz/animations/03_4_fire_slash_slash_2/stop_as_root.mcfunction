scoreboard players set @s aj.louvert.animation.03_4_fire_slash_slash_2.local_anim_time 0
tag @s remove aj.louvert.animation.03_4_fire_slash_slash_2
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.louvert.disable_command_keyframes
function animated_java:louvert/zzzzzzzz/animations/03_4_fire_slash_slash_2/tree/leaf_0
tag @s remove aj.louvert.disable_command_keyframes