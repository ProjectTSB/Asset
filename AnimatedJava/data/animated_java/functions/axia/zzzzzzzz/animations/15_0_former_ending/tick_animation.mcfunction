scoreboard players add @s aj.axia.animation.15_0_former_ending.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.15_0_former_ending.local_anim_time
function animated_java:axia/zzzzzzzz/animations/15_0_former_ending/apply_frame_as_root
execute if score @s aj.axia.animation.15_0_former_ending.local_anim_time matches 97.. run function animated_java:axia/zzzzzzzz/animations/15_0_former_ending/end