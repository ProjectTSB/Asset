scoreboard players add @s aj.louvert.animation.12_1_opening.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.12_1_opening.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/12_1_opening/apply_frame_as_root
execute if score @s aj.louvert.animation.12_1_opening.local_anim_time matches 100.. run function animated_java:louvert/zzzzzzzz/animations/12_1_opening/end