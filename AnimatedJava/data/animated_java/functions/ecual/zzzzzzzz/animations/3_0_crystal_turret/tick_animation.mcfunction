scoreboard players add @s aj.ecual.animation.3_0_crystal_turret.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ecual.animation.3_0_crystal_turret.local_anim_time
function animated_java:ecual/zzzzzzzz/animations/3_0_crystal_turret/apply_frame_as_root
execute if score @s aj.ecual.animation.3_0_crystal_turret.local_anim_time matches 80.. run function animated_java:ecual/zzzzzzzz/animations/3_0_crystal_turret/end