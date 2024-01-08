scoreboard players add @s aj.louvert.animation.02_1_damage.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.02_1_damage.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/02_1_damage/apply_frame_as_root
execute if score @s aj.louvert.animation.02_1_damage.local_anim_time matches 25.. run function animated_java:louvert/zzzzzzzz/animations/02_1_damage/end