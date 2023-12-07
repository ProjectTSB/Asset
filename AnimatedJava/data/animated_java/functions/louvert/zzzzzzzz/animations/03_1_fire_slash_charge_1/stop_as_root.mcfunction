scoreboard players set @s aj.louvert.animation.03_1_fire_slash_charge_1.local_anim_time 0
tag @s remove aj.louvert.animation.03_1_fire_slash_charge_1
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.louvert.disable_command_keyframes
function animated_java:louvert/zzzzzzzz/animations/03_1_fire_slash_charge_1/tree/leaf_0
tag @s remove aj.louvert.disable_command_keyframes