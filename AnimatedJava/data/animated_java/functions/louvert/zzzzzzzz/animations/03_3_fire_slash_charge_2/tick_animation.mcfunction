scoreboard players add @s aj.louvert.animation.03_3_fire_slash_charge_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.03_3_fire_slash_charge_2.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/03_3_fire_slash_charge_2/apply_frame_as_root
execute if score @s aj.louvert.animation.03_3_fire_slash_charge_2.local_anim_time matches 15.. run function animated_java:louvert/zzzzzzzz/animations/03_3_fire_slash_charge_2/end