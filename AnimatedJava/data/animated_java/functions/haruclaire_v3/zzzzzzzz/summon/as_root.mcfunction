execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.haruclaire_v3.rig_loaded 1
scoreboard players operation @s aj.haruclaire_v3.export_version = aj.haruclaire_v3.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:haruclaire_v3/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.haruclaire_v3.variant.default aj.id run function animated_java:haruclaire_v3/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.haruclaire_v3.variant.blink aj.id run function animated_java:haruclaire_v3/zzzzzzzz/apply_variant/blink/as_root
execute if score #variant aj.i = $aj.haruclaire_v3.variant.damage aj.id run function animated_java:haruclaire_v3/zzzzzzzz/apply_variant/damage/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_v3.animation.1_0_rod_idle aj.id run function animated_java:haruclaire_v3/zzzzzzzz/animations/1_0_rod_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_v3.animation.1_0_rod_idle aj.id run scoreboard players operation @s aj.haruclaire_v3.animation.1_0_rod_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_v3.animation.2_0_rod_icewall aj.id run function animated_java:haruclaire_v3/zzzzzzzz/animations/2_0_rod_icewall/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_v3.animation.2_0_rod_icewall aj.id run scoreboard players operation @s aj.haruclaire_v3.animation.2_0_rod_icewall.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_v3.animation.3_0_rod_icebullet aj.id run function animated_java:haruclaire_v3/zzzzzzzz/animations/3_0_rod_icebullet/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_v3.animation.3_0_rod_icebullet aj.id run scoreboard players operation @s aj.haruclaire_v3.animation.3_0_rod_icebullet.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_v3.animation.4_0_rod_icefang aj.id run function animated_java:haruclaire_v3/zzzzzzzz/animations/4_0_rod_icefang/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_v3.animation.4_0_rod_icefang aj.id run scoreboard players operation @s aj.haruclaire_v3.animation.4_0_rod_icefang.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_v3.animation.5_0_rod_icespear aj.id run function animated_java:haruclaire_v3/zzzzzzzz/animations/5_0_rod_icespear/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_v3.animation.5_0_rod_icespear aj.id run scoreboard players operation @s aj.haruclaire_v3.animation.5_0_rod_icespear.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_v3.animation.6_0_rod_iceray aj.id run function animated_java:haruclaire_v3/zzzzzzzz/animations/6_0_rod_iceray/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_v3.animation.6_0_rod_iceray aj.id run scoreboard players operation @s aj.haruclaire_v3.animation.6_0_rod_iceray.local_anim_time = #frame aj.i
execute at @s run function #animated_java:haruclaire_v3/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i