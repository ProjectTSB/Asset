scoreboard players add @s aj.axia.animation.1_1_idle_rare.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.1_1_idle_rare.local_anim_time
function animated_java:axia/zzzzzzzz/animations/1_1_idle_rare/apply_frame_as_root
execute if score @s aj.axia.animation.1_1_idle_rare.local_anim_time matches 40.. run function animated_java:axia/zzzzzzzz/animations/1_1_idle_rare/end