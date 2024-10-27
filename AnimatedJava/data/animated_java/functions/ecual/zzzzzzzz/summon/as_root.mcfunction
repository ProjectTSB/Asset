execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.ecual.rig_loaded 1
scoreboard players operation @s aj.ecual.export_version = aj.ecual.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:ecual/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.ecual.variant.default aj.id run function animated_java:ecual/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.ecual.variant.jitome aj.id run function animated_java:ecual/zzzzzzzz/apply_variant/jitome/as_root
execute if score #variant aj.i = $aj.ecual.variant.mabaraki aj.id run function animated_java:ecual/zzzzzzzz/apply_variant/mabaraki/as_root
execute if score #variant aj.i = $aj.ecual.variant.majime aj.id run function animated_java:ecual/zzzzzzzz/apply_variant/majime/as_root
execute if score #variant aj.i = $aj.ecual.variant.wink aj.id run function animated_java:ecual/zzzzzzzz/apply_variant/wink/as_root
execute if score #variant aj.i = $aj.ecual.variant.yarare aj.id run function animated_java:ecual/zzzzzzzz/apply_variant/yarare/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.1_0_idle aj.id run function animated_java:ecual/zzzzzzzz/animations/1_0_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.1_0_idle aj.id run scoreboard players operation @s aj.ecual.animation.1_0_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.1_1_idle_rare aj.id run function animated_java:ecual/zzzzzzzz/animations/1_1_idle_rare/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.1_1_idle_rare aj.id run scoreboard players operation @s aj.ecual.animation.1_1_idle_rare.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.2_0_chill_rain aj.id run function animated_java:ecual/zzzzzzzz/animations/2_0_chill_rain/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.2_0_chill_rain aj.id run scoreboard players operation @s aj.ecual.animation.2_0_chill_rain.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.3_0_crystal_turret aj.id run function animated_java:ecual/zzzzzzzz/animations/3_0_crystal_turret/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.3_0_crystal_turret aj.id run scoreboard players operation @s aj.ecual.animation.3_0_crystal_turret.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.4_0_summon_book aj.id run function animated_java:ecual/zzzzzzzz/animations/4_0_summon_book/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.4_0_summon_book aj.id run scoreboard players operation @s aj.ecual.animation.4_0_summon_book.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.5_0_shining_ray aj.id run function animated_java:ecual/zzzzzzzz/animations/5_0_shining_ray/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.5_0_shining_ray aj.id run scoreboard players operation @s aj.ecual.animation.5_0_shining_ray.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.5_1_water_bullet aj.id run function animated_java:ecual/zzzzzzzz/animations/5_1_water_bullet/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.5_1_water_bullet aj.id run scoreboard players operation @s aj.ecual.animation.5_1_water_bullet.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.6_0_moving aj.id run function animated_java:ecual/zzzzzzzz/animations/6_0_moving/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.6_0_moving aj.id run scoreboard players operation @s aj.ecual.animation.6_0_moving.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.7_0_holy_ray aj.id run function animated_java:ecual/zzzzzzzz/animations/7_0_holy_ray/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.7_0_holy_ray aj.id run scoreboard players operation @s aj.ecual.animation.7_0_holy_ray.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.8_0_quietus_rain aj.id run function animated_java:ecual/zzzzzzzz/animations/8_0_quietus_rain/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.8_0_quietus_rain aj.id run scoreboard players operation @s aj.ecual.animation.8_0_quietus_rain.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.9_0_water_wall aj.id run function animated_java:ecual/zzzzzzzz/animations/9_0_water_wall/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.9_0_water_wall aj.id run scoreboard players operation @s aj.ecual.animation.9_0_water_wall.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.10_0_hydro_storm aj.id run function animated_java:ecual/zzzzzzzz/animations/10_0_hydro_storm/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.10_0_hydro_storm aj.id run scoreboard players operation @s aj.ecual.animation.10_0_hydro_storm.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.11_0_damage_1 aj.id run function animated_java:ecual/zzzzzzzz/animations/11_0_damage_1/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.11_0_damage_1 aj.id run scoreboard players operation @s aj.ecual.animation.11_0_damage_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.11_1_damage_2 aj.id run function animated_java:ecual/zzzzzzzz/animations/11_1_damage_2/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.11_1_damage_2 aj.id run scoreboard players operation @s aj.ecual.animation.11_1_damage_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.12_0_opening_attack aj.id run function animated_java:ecual/zzzzzzzz/animations/12_0_opening_attack/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.12_0_opening_attack aj.id run scoreboard players operation @s aj.ecual.animation.12_0_opening_attack.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ecual.animation.13_0_former_ending aj.id run function animated_java:ecual/zzzzzzzz/animations/13_0_former_ending/apply_frame_as_root
execute if score #animation aj.i = $aj.ecual.animation.13_0_former_ending aj.id run scoreboard players operation @s aj.ecual.animation.13_0_former_ending.local_anim_time = #frame aj.i
execute at @s run function #animated_java:ecual/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i