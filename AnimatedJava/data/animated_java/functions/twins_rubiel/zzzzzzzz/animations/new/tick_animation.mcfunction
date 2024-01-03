scoreboard players add @s aj.twins_rubiel.animation.new.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.new.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/new/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.new.local_anim_time matches 1.. run function animated_java:twins_rubiel/zzzzzzzz/animations/new/end