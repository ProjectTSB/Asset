scoreboard players set @s aj.ecual.animation.4_0_summon_book.local_anim_time 0
tag @s remove aj.ecual.animation.4_0_summon_book
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.ecual.disable_command_keyframes
function animated_java:ecual/zzzzzzzz/animations/4_0_summon_book/tree/leaf_0
tag @s remove aj.ecual.disable_command_keyframes