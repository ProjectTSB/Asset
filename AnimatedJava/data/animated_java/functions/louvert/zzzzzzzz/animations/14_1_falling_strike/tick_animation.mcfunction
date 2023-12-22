scoreboard players add @s aj.louvert.animation.14_1_falling_strike.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.14_1_falling_strike.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/14_1_falling_strike/apply_frame_as_root
execute if score @s aj.louvert.animation.14_1_falling_strike.local_anim_time matches 55.. run function animated_java:louvert/zzzzzzzz/animations/14_1_falling_strike/end