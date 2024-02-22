scoreboard players add @s aj.twins_rubiel.animation.40_2_damage_end.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.40_2_damage_end.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/40_2_damage_end/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.40_2_damage_end.local_anim_time matches 17.. run function animated_java:twins_rubiel/zzzzzzzz/animations/40_2_damage_end/end