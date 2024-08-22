scoreboard players add @s aj.ecual.animation.7_0_holy_ray.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ecual.animation.7_0_holy_ray.local_anim_time
function animated_java:ecual/zzzzzzzz/animations/7_0_holy_ray/apply_frame_as_root
execute if score @s aj.ecual.animation.7_0_holy_ray.local_anim_time matches 175.. run function animated_java:ecual/zzzzzzzz/animations/7_0_holy_ray/end