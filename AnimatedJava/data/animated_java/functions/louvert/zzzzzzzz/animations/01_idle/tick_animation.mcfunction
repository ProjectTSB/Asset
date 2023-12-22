scoreboard players add @s aj.louvert.animation.01_idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.01_idle.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/01_idle/apply_frame_as_root
execute if score @s aj.louvert.animation.01_idle.local_anim_time matches 40.. run function animated_java:louvert/zzzzzzzz/animations/01_idle/end