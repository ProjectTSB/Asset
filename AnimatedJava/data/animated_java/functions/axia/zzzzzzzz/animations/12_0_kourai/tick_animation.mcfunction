scoreboard players add @s aj.axia.animation.12_0_kourai.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.12_0_kourai.local_anim_time
function animated_java:axia/zzzzzzzz/animations/12_0_kourai/apply_frame_as_root
execute if score @s aj.axia.animation.12_0_kourai.local_anim_time matches 190.. run function animated_java:axia/zzzzzzzz/animations/12_0_kourai/end