scoreboard players add @s aj.twins_sapphiel.animation.6_1_hg_lowkick.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.6_1_hg_lowkick.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/6_1_hg_lowkick/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.6_1_hg_lowkick.local_anim_time matches 100.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/6_1_hg_lowkick/end