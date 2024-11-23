scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.labyria.animation.99_0_finish.local_anim_time 0
scoreboard players set @s aj.labyria.animation.99_0_finish.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:labyria/zzzzzzzz/animations/99_0_finish/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.labyria.animation.99_0_finish