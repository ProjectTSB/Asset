scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.labyria.animation.5_0_sw_smoke_bomb.local_anim_time 0
scoreboard players set @s aj.labyria.animation.5_0_sw_smoke_bomb.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:labyria/zzzzzzzz/animations/5_0_sw_smoke_bomb/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.labyria.animation.5_0_sw_smoke_bomb