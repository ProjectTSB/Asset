scoreboard players add @s aj.haruclaire_v3.animation.3_0_rod_icebullet.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire_v3.animation.3_0_rod_icebullet.local_anim_time
function animated_java:haruclaire_v3/zzzzzzzz/animations/3_0_rod_icebullet/apply_frame_as_root
execute if score @s aj.haruclaire_v3.animation.3_0_rod_icebullet.local_anim_time matches 113.. run function animated_java:haruclaire_v3/zzzzzzzz/animations/3_0_rod_icebullet/end