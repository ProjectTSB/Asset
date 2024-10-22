scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.tultaria.animation.attack_melee_4_windup.local_anim_time 0
scoreboard players set @s aj.tultaria.animation.attack_melee_4_windup.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:tultaria/zzzzzzzz/animations/attack_melee_4_windup/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.tultaria.animation.attack_melee_4_windup