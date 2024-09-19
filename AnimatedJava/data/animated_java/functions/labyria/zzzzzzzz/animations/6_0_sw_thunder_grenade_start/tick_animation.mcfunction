scoreboard players add @s aj.labyria.animation.6_0_sw_thunder_grenade_start.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.6_0_sw_thunder_grenade_start.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/6_0_sw_thunder_grenade_start/apply_frame_as_root
execute if score @s aj.labyria.animation.6_0_sw_thunder_grenade_start.local_anim_time matches 35.. run function animated_java:labyria/zzzzzzzz/animations/6_0_sw_thunder_grenade_start/end