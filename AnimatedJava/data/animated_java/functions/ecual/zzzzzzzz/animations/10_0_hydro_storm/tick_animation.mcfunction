scoreboard players add @s aj.ecual.animation.10_0_hydro_storm.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ecual.animation.10_0_hydro_storm.local_anim_time
function animated_java:ecual/zzzzzzzz/animations/10_0_hydro_storm/apply_frame_as_root
execute if score @s aj.ecual.animation.10_0_hydro_storm.local_anim_time matches 185.. run function animated_java:ecual/zzzzzzzz/animations/10_0_hydro_storm/end