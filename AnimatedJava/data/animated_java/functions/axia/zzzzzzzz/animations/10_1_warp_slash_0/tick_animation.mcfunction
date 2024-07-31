scoreboard players add @s aj.axia.animation.10_1_warp_slash_0.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.10_1_warp_slash_0.local_anim_time
function animated_java:axia/zzzzzzzz/animations/10_1_warp_slash_0/apply_frame_as_root
execute if score @s aj.axia.animation.10_1_warp_slash_0.local_anim_time matches 26.. run function animated_java:axia/zzzzzzzz/animations/10_1_warp_slash_0/end