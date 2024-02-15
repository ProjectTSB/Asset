scoreboard players add @s aj.twins_sapphiel.animation.21_0_lc_shot_jump.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.21_0_lc_shot_jump.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/21_0_lc_shot_jump/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.21_0_lc_shot_jump.local_anim_time matches 13.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/21_0_lc_shot_jump/end