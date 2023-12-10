scoreboard players add @s aj.tultaria.animation.blade_destruction.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tultaria.animation.blade_destruction.local_anim_time
function animated_java:tultaria/zzzzzzzz/animations/blade_destruction/apply_frame_as_root
execute if score @s aj.tultaria.animation.blade_destruction.local_anim_time matches 30.. run function animated_java:tultaria/zzzzzzzz/animations/blade_destruction/end