scoreboard players add @s aj.tultaria.animation.dodge_side.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tultaria.animation.dodge_side.local_anim_time
function animated_java:tultaria/zzzzzzzz/animations/dodge_side/apply_frame_as_root
execute if score @s aj.tultaria.animation.dodge_side.local_anim_time matches 30.. run function animated_java:tultaria/zzzzzzzz/animations/dodge_side/end