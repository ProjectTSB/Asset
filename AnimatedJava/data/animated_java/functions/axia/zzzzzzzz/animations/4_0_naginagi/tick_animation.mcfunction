scoreboard players add @s aj.axia.animation.4_0_naginagi.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.4_0_naginagi.local_anim_time
function animated_java:axia/zzzzzzzz/animations/4_0_naginagi/apply_frame_as_root
execute if score @s aj.axia.animation.4_0_naginagi.local_anim_time matches 70.. run function animated_java:axia/zzzzzzzz/animations/4_0_naginagi/end