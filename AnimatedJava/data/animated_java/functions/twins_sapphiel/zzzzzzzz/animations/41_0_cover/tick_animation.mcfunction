scoreboard players add @s aj.twins_sapphiel.animation.41_0_cover.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.41_0_cover.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/41_0_cover/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.41_0_cover.local_anim_time matches 120.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/41_0_cover/end