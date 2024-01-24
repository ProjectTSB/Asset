scoreboard players add @s aj.twins_sapphiel.animation.12_0_sg_idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.12_0_sg_idle.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/12_0_sg_idle/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.12_0_sg_idle.local_anim_time matches 60.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/12_0_sg_idle/end