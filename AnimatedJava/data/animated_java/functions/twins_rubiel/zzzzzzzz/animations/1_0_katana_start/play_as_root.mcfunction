scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.twins_rubiel.animation.1_0_katana_start.local_anim_time 0
scoreboard players set @s aj.twins_rubiel.animation.1_0_katana_start.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:twins_rubiel/zzzzzzzz/animations/1_0_katana_start/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.twins_rubiel.animation.1_0_katana_start