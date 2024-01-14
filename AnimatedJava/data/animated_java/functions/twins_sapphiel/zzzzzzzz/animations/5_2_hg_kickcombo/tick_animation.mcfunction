scoreboard players add @s aj.twins_sapphiel.animation.5_2_hg_kickcombo.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.5_2_hg_kickcombo.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/5_2_hg_kickcombo/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.5_2_hg_kickcombo.local_anim_time matches 100.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/5_2_hg_kickcombo/end