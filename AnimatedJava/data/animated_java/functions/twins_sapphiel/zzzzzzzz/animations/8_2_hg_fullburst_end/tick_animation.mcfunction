scoreboard players add @s aj.twins_sapphiel.animation.8_2_hg_fullburst_end.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.8_2_hg_fullburst_end.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/8_2_hg_fullburst_end/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.8_2_hg_fullburst_end.local_anim_time matches 30.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/8_2_hg_fullburst_end/end