scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.tultaria.animation.blade_destruction_start.local_anim_time 0
scoreboard players set @s aj.tultaria.animation.blade_destruction_start.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:tultaria/zzzzzzzz/animations/blade_destruction_start/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.tultaria.animation.blade_destruction_start