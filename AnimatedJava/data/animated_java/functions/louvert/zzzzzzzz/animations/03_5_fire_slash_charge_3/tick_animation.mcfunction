scoreboard players add @s aj.louvert.animation.03_5_fire_slash_charge_3.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.03_5_fire_slash_charge_3.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/03_5_fire_slash_charge_3/apply_frame_as_root
execute if score @s aj.louvert.animation.03_5_fire_slash_charge_3.local_anim_time matches 15.. run function animated_java:louvert/zzzzzzzz/animations/03_5_fire_slash_charge_3/end