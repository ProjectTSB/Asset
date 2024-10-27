scoreboard players add @s aj.axia.animation.14_0_opening_attack.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.14_0_opening_attack.local_anim_time
function animated_java:axia/zzzzzzzz/animations/14_0_opening_attack/apply_frame_as_root
execute if score @s aj.axia.animation.14_0_opening_attack.local_anim_time matches 210.. run function animated_java:axia/zzzzzzzz/animations/14_0_opening_attack/end