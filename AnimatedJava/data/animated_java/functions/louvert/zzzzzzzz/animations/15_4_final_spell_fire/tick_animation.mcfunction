scoreboard players add @s aj.louvert.animation.15_4_final_spell_fire.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.15_4_final_spell_fire.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/15_4_final_spell_fire/apply_frame_as_root
execute if score @s aj.louvert.animation.15_4_final_spell_fire.local_anim_time matches 177.. run function animated_java:louvert/zzzzzzzz/animations/15_4_final_spell_fire/end