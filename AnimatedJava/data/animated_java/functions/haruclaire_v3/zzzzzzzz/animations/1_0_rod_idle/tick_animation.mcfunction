scoreboard players add @s aj.haruclaire_v3.animation.1_0_rod_idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire_v3.animation.1_0_rod_idle.local_anim_time
function animated_java:haruclaire_v3/zzzzzzzz/animations/1_0_rod_idle/apply_frame_as_root
execute if score @s aj.haruclaire_v3.animation.1_0_rod_idle.local_anim_time matches 50.. run function animated_java:haruclaire_v3/zzzzzzzz/animations/1_0_rod_idle/end