scoreboard players add @s aj.louvert.animation.11_1_cast_magic.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.11_1_cast_magic.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/11_1_cast_magic/apply_frame_as_root
execute if score @s aj.louvert.animation.11_1_cast_magic.local_anim_time matches 55.. run function animated_java:louvert/zzzzzzzz/animations/11_1_cast_magic/end