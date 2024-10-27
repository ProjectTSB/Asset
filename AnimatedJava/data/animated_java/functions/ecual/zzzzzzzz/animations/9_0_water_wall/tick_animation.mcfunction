scoreboard players add @s aj.ecual.animation.9_0_water_wall.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ecual.animation.9_0_water_wall.local_anim_time
function animated_java:ecual/zzzzzzzz/animations/9_0_water_wall/apply_frame_as_root
execute if score @s aj.ecual.animation.9_0_water_wall.local_anim_time matches 95.. run function animated_java:ecual/zzzzzzzz/animations/9_0_water_wall/end