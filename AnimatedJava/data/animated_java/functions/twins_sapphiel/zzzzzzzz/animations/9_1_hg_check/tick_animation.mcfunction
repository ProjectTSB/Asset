scoreboard players add @s aj.twins_sapphiel.animation.9_1_hg_check.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.9_1_hg_check.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/9_1_hg_check/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.9_1_hg_check.local_anim_time matches 25.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/9_1_hg_check/end