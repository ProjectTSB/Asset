scoreboard players add @s aj.axia.animation.11_0_dimension_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.11_0_dimension_slash.local_anim_time
function animated_java:axia/zzzzzzzz/animations/11_0_dimension_slash/apply_frame_as_root
execute if score @s aj.axia.animation.11_0_dimension_slash.local_anim_time matches 190.. run function animated_java:axia/zzzzzzzz/animations/11_0_dimension_slash/end