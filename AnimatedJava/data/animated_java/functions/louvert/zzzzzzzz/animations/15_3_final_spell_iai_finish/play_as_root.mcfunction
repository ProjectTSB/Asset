scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.louvert.animation.15_3_final_spell_iai_finish.local_anim_time 0
scoreboard players set @s aj.louvert.animation.15_3_final_spell_iai_finish.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:louvert/zzzzzzzz/animations/15_3_final_spell_iai_finish/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.louvert.animation.15_3_final_spell_iai_finish