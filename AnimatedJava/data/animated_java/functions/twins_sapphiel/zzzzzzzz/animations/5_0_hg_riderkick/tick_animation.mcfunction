scoreboard players add @s aj.twins_sapphiel.animation.5_0_hg_riderkick.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.5_0_hg_riderkick.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/5_0_hg_riderkick/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.5_0_hg_riderkick.local_anim_time matches 44.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/5_0_hg_riderkick/end