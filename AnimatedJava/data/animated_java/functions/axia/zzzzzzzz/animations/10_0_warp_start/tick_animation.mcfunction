scoreboard players add @s aj.axia.animation.10_0_warp_start.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.10_0_warp_start.local_anim_time
function animated_java:axia/zzzzzzzz/animations/10_0_warp_start/apply_frame_as_root
execute if score @s aj.axia.animation.10_0_warp_start.local_anim_time matches 30.. run function animated_java:axia/zzzzzzzz/animations/10_0_warp_start/end