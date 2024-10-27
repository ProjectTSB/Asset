scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.ecual.animation.9_0_water_wall.local_anim_time 0
scoreboard players set @s aj.ecual.animation.9_0_water_wall.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:ecual/zzzzzzzz/animations/9_0_water_wall/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.ecual.animation.9_0_water_wall