execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.lexiel.rig_loaded 1
scoreboard players operation @s aj.lexiel.export_version = aj.lexiel.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:lexiel/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.lexiel.variant.default aj.id run function animated_java:lexiel/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.neutral aj.id run function animated_java:lexiel/zzzzzzzz/animations/neutral/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.neutral aj.id run scoreboard players operation @s aj.lexiel.animation.neutral.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.attack1 aj.id run function animated_java:lexiel/zzzzzzzz/animations/attack1/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.attack1 aj.id run scoreboard players operation @s aj.lexiel.animation.attack1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.attack2 aj.id run function animated_java:lexiel/zzzzzzzz/animations/attack2/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.attack2 aj.id run scoreboard players operation @s aj.lexiel.animation.attack2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.attack3_1 aj.id run function animated_java:lexiel/zzzzzzzz/animations/attack3_1/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.attack3_1 aj.id run scoreboard players operation @s aj.lexiel.animation.attack3_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.attack3_2 aj.id run function animated_java:lexiel/zzzzzzzz/animations/attack3_2/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.attack3_2 aj.id run scoreboard players operation @s aj.lexiel.animation.attack3_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.magic1 aj.id run function animated_java:lexiel/zzzzzzzz/animations/magic1/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.magic1 aj.id run scoreboard players operation @s aj.lexiel.animation.magic1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.magic2 aj.id run function animated_java:lexiel/zzzzzzzz/animations/magic2/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.magic2 aj.id run scoreboard players operation @s aj.lexiel.animation.magic2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.magic3 aj.id run function animated_java:lexiel/zzzzzzzz/animations/magic3/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.magic3 aj.id run scoreboard players operation @s aj.lexiel.animation.magic3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.attack4 aj.id run function animated_java:lexiel/zzzzzzzz/animations/attack4/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.attack4 aj.id run scoreboard players operation @s aj.lexiel.animation.attack4.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.rod aj.id run function animated_java:lexiel/zzzzzzzz/animations/rod/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.rod aj.id run scoreboard players operation @s aj.lexiel.animation.rod.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.death aj.id run function animated_java:lexiel/zzzzzzzz/animations/death/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.death aj.id run scoreboard players operation @s aj.lexiel.animation.death.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lexiel.animation.spawn aj.id run function animated_java:lexiel/zzzzzzzz/animations/spawn/apply_frame_as_root
execute if score #animation aj.i = $aj.lexiel.animation.spawn aj.id run scoreboard players operation @s aj.lexiel.animation.spawn.local_anim_time = #frame aj.i
execute at @s run function #animated_java:lexiel/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i