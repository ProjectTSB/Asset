scoreboard players add @s aj.louvert.animation.05_1_blade_cutter.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.05_1_blade_cutter.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/05_1_blade_cutter/apply_frame_as_root
execute if score @s aj.louvert.animation.05_1_blade_cutter.local_anim_time matches 90.. run function animated_java:louvert/zzzzzzzz/animations/05_1_blade_cutter/end