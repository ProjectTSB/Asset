scoreboard players add @s aj.twins_sapphiel.animation.6_0_hg_punch.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.6_0_hg_punch.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/6_0_hg_punch/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.6_0_hg_punch.local_anim_time matches 76.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/6_0_hg_punch/end