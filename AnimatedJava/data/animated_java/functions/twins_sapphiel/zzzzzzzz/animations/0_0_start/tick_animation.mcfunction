scoreboard players add @s aj.twins_sapphiel.animation.0_0_start.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.0_0_start.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/0_0_start/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.0_0_start.local_anim_time matches 95.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/0_0_start/end