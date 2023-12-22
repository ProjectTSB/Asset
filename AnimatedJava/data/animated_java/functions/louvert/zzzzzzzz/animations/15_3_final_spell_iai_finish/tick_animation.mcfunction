scoreboard players add @s aj.louvert.animation.15_3_final_spell_iai_finish.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.15_3_final_spell_iai_finish.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/15_3_final_spell_iai_finish/apply_frame_as_root
execute if score @s aj.louvert.animation.15_3_final_spell_iai_finish.local_anim_time matches 10.. run function animated_java:louvert/zzzzzzzz/animations/15_3_final_spell_iai_finish/end