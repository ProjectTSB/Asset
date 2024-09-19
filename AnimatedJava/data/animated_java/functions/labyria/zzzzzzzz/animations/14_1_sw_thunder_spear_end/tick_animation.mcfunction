scoreboard players add @s aj.labyria.animation.14_1_sw_thunder_spear_end.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.14_1_sw_thunder_spear_end.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/14_1_sw_thunder_spear_end/apply_frame_as_root
execute if score @s aj.labyria.animation.14_1_sw_thunder_spear_end.local_anim_time matches 60.. run function animated_java:labyria/zzzzzzzz/animations/14_1_sw_thunder_spear_end/end