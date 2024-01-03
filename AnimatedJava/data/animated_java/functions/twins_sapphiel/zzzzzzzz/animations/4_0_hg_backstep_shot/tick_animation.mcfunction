scoreboard players add @s aj.twins_sapphiel.animation.4_0_hg_backstep_shot.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.4_0_hg_backstep_shot.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/4_0_hg_backstep_shot/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.4_0_hg_backstep_shot.local_anim_time matches 60.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/4_0_hg_backstep_shot/end