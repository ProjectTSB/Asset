scoreboard players add @s aj.twins_sapphiel.animation.9_0_hg_reload.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.9_0_hg_reload.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/9_0_hg_reload/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.9_0_hg_reload.local_anim_time matches 55.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/9_0_hg_reload/end