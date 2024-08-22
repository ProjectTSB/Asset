scoreboard players add @s aj.ecual.animation.4_0_summon_book.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ecual.animation.4_0_summon_book.local_anim_time
function animated_java:ecual/zzzzzzzz/animations/4_0_summon_book/apply_frame_as_root
execute if score @s aj.ecual.animation.4_0_summon_book.local_anim_time matches 120.. run function animated_java:ecual/zzzzzzzz/animations/4_0_summon_book/end