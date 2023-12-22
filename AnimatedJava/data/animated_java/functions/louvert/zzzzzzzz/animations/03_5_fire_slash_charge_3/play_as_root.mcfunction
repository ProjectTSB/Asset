scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.louvert.animation.03_5_fire_slash_charge_3.local_anim_time 0
scoreboard players set @s aj.louvert.animation.03_5_fire_slash_charge_3.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:louvert/zzzzzzzz/animations/03_5_fire_slash_charge_3/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.louvert.animation.03_5_fire_slash_charge_3