scoreboard players set @s aj.louvert.animation.15_4_final_spell_fire.local_anim_time 0
tag @s remove aj.louvert.animation.15_4_final_spell_fire
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.louvert.disable_command_keyframes
function animated_java:louvert/zzzzzzzz/animations/15_4_final_spell_fire/tree/leaf_0
tag @s remove aj.louvert.disable_command_keyframes