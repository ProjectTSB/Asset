scoreboard players add @s aj.labyria.animation.14_0_sw_thunder_spear.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.14_0_sw_thunder_spear.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/14_0_sw_thunder_spear/apply_frame_as_root
execute if score @s aj.labyria.animation.14_0_sw_thunder_spear.local_anim_time matches 60.. run function animated_java:labyria/zzzzzzzz/animations/14_0_sw_thunder_spear/end