scoreboard players add @s aj.labyria.animation.6_2_sw_thunder_grenade_end.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.6_2_sw_thunder_grenade_end.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/6_2_sw_thunder_grenade_end/apply_frame_as_root
execute if score @s aj.labyria.animation.6_2_sw_thunder_grenade_end.local_anim_time matches 25.. run function animated_java:labyria/zzzzzzzz/animations/6_2_sw_thunder_grenade_end/end