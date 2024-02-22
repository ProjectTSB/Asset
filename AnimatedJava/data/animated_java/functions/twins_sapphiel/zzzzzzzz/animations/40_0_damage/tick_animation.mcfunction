scoreboard players add @s aj.twins_sapphiel.animation.40_0_damage.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.40_0_damage.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/40_0_damage/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.40_0_damage.local_anim_time matches 20.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/40_0_damage/end