scoreboard players add @s aj.ecual.animation.5_1_water_bullet.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ecual.animation.5_1_water_bullet.local_anim_time
function animated_java:ecual/zzzzzzzz/animations/5_1_water_bullet/apply_frame_as_root
execute if score @s aj.ecual.animation.5_1_water_bullet.local_anim_time matches 160.. run function animated_java:ecual/zzzzzzzz/animations/5_1_water_bullet/end