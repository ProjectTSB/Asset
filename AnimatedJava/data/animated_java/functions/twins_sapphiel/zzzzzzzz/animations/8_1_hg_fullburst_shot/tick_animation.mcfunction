scoreboard players add @s aj.twins_sapphiel.animation.8_1_hg_fullburst_shot.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.8_1_hg_fullburst_shot.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/8_1_hg_fullburst_shot/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.8_1_hg_fullburst_shot.local_anim_time matches 5.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/8_1_hg_fullburst_shot/end