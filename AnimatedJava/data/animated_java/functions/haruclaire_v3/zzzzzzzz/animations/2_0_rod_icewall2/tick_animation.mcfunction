scoreboard players add @s aj.haruclaire_v3.animation.2_0_rod_icewall2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire_v3.animation.2_0_rod_icewall2.local_anim_time
function animated_java:haruclaire_v3/zzzzzzzz/animations/2_0_rod_icewall2/apply_frame_as_root
execute if score @s aj.haruclaire_v3.animation.2_0_rod_icewall2.local_anim_time matches 75.. run function animated_java:haruclaire_v3/zzzzzzzz/animations/2_0_rod_icewall2/end