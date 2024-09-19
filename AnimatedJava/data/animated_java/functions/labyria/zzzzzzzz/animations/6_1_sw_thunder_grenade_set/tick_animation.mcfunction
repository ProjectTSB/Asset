scoreboard players add @s aj.labyria.animation.6_1_sw_thunder_grenade_set.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.6_1_sw_thunder_grenade_set.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/6_1_sw_thunder_grenade_set/apply_frame_as_root
execute if score @s aj.labyria.animation.6_1_sw_thunder_grenade_set.local_anim_time matches 38.. run function animated_java:labyria/zzzzzzzz/animations/6_1_sw_thunder_grenade_set/end