scoreboard players add @s aj.louvert.animation.09_2_triple_slash_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.09_2_triple_slash_slash.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/09_2_triple_slash_slash/apply_frame_as_root
execute if score @s aj.louvert.animation.09_2_triple_slash_slash.local_anim_time matches 45.. run function animated_java:louvert/zzzzzzzz/animations/09_2_triple_slash_slash/end