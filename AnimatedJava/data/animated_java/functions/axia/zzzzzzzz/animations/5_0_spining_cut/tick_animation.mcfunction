scoreboard players add @s aj.axia.animation.5_0_spining_cut.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.5_0_spining_cut.local_anim_time
function animated_java:axia/zzzzzzzz/animations/5_0_spining_cut/apply_frame_as_root
execute if score @s aj.axia.animation.5_0_spining_cut.local_anim_time matches 45.. run function animated_java:axia/zzzzzzzz/animations/5_0_spining_cut/end