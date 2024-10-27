scoreboard players add @s aj.axia.animation.9_0_zangekihou.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.9_0_zangekihou.local_anim_time
function animated_java:axia/zzzzzzzz/animations/9_0_zangekihou/apply_frame_as_root
execute if score @s aj.axia.animation.9_0_zangekihou.local_anim_time matches 55.. run function animated_java:axia/zzzzzzzz/animations/9_0_zangekihou/end