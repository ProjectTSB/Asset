scoreboard players add @s aj.louvert.animation.08_1_iai_start.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.08_1_iai_start.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/08_1_iai_start/apply_frame_as_root
execute if score @s aj.louvert.animation.08_1_iai_start.local_anim_time matches 36.. run function animated_java:louvert/zzzzzzzz/animations/08_1_iai_start/end