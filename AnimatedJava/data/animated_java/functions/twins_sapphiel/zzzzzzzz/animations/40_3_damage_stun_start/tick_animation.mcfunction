scoreboard players add @s aj.twins_sapphiel.animation.40_3_damage_stun_start.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.40_3_damage_stun_start.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/40_3_damage_stun_start/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.40_3_damage_stun_start.local_anim_time matches 16.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/40_3_damage_stun_start/end