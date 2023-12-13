execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.louvert.rig_loaded 1
scoreboard players operation @s aj.louvert.export_version = aj.louvert.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:louvert/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.louvert.variant.default aj.id run function animated_java:louvert/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.louvert.variant.closed_eyes aj.id run function animated_java:louvert/zzzzzzzz/apply_variant/closed_eyes/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.01_idle aj.id run function animated_java:louvert/zzzzzzzz/animations/01_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.01_idle aj.id run scoreboard players operation @s aj.louvert.animation.01_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.02_1_damage aj.id run function animated_java:louvert/zzzzzzzz/animations/02_1_damage/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.02_1_damage aj.id run scoreboard players operation @s aj.louvert.animation.02_1_damage.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.02_2_damage aj.id run function animated_java:louvert/zzzzzzzz/animations/02_2_damage/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.02_2_damage aj.id run scoreboard players operation @s aj.louvert.animation.02_2_damage.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.03_1_fire_slash_charge_1 aj.id run function animated_java:louvert/zzzzzzzz/animations/03_1_fire_slash_charge_1/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.03_1_fire_slash_charge_1 aj.id run scoreboard players operation @s aj.louvert.animation.03_1_fire_slash_charge_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.03_2_fire_slash_slash_1 aj.id run function animated_java:louvert/zzzzzzzz/animations/03_2_fire_slash_slash_1/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.03_2_fire_slash_slash_1 aj.id run scoreboard players operation @s aj.louvert.animation.03_2_fire_slash_slash_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.03_3_fire_slash_charge_2 aj.id run function animated_java:louvert/zzzzzzzz/animations/03_3_fire_slash_charge_2/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.03_3_fire_slash_charge_2 aj.id run scoreboard players operation @s aj.louvert.animation.03_3_fire_slash_charge_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.03_4_fire_slash_slash_2 aj.id run function animated_java:louvert/zzzzzzzz/animations/03_4_fire_slash_slash_2/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.03_4_fire_slash_slash_2 aj.id run scoreboard players operation @s aj.louvert.animation.03_4_fire_slash_slash_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.03_5_fire_slash_charge_3 aj.id run function animated_java:louvert/zzzzzzzz/animations/03_5_fire_slash_charge_3/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.03_5_fire_slash_charge_3 aj.id run scoreboard players operation @s aj.louvert.animation.03_5_fire_slash_charge_3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.03_6_fire_slash_slash_3 aj.id run function animated_java:louvert/zzzzzzzz/animations/03_6_fire_slash_slash_3/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.03_6_fire_slash_slash_3 aj.id run scoreboard players operation @s aj.louvert.animation.03_6_fire_slash_slash_3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.04_1_flame_magic_cast aj.id run function animated_java:louvert/zzzzzzzz/animations/04_1_flame_magic_cast/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.04_1_flame_magic_cast aj.id run scoreboard players operation @s aj.louvert.animation.04_1_flame_magic_cast.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.05_1_blade_cutter aj.id run function animated_java:louvert/zzzzzzzz/animations/05_1_blade_cutter/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.05_1_blade_cutter aj.id run scoreboard players operation @s aj.louvert.animation.05_1_blade_cutter.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.06_1_move_start aj.id run function animated_java:louvert/zzzzzzzz/animations/06_1_move_start/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.06_1_move_start aj.id run scoreboard players operation @s aj.louvert.animation.06_1_move_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.06_2_moving aj.id run function animated_java:louvert/zzzzzzzz/animations/06_2_moving/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.06_2_moving aj.id run scoreboard players operation @s aj.louvert.animation.06_2_moving.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.06_3_move_stop aj.id run function animated_java:louvert/zzzzzzzz/animations/06_3_move_stop/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.06_3_move_stop aj.id run scoreboard players operation @s aj.louvert.animation.06_3_move_stop.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.06_4_move_attack aj.id run function animated_java:louvert/zzzzzzzz/animations/06_4_move_attack/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.06_4_move_attack aj.id run scoreboard players operation @s aj.louvert.animation.06_4_move_attack.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.06_5_move_slash aj.id run function animated_java:louvert/zzzzzzzz/animations/06_5_move_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.06_5_move_slash aj.id run scoreboard players operation @s aj.louvert.animation.06_5_move_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.07_1_soul_magic_cast aj.id run function animated_java:louvert/zzzzzzzz/animations/07_1_soul_magic_cast/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.07_1_soul_magic_cast aj.id run scoreboard players operation @s aj.louvert.animation.07_1_soul_magic_cast.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.08_1_iai_start aj.id run function animated_java:louvert/zzzzzzzz/animations/08_1_iai_start/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.08_1_iai_start aj.id run scoreboard players operation @s aj.louvert.animation.08_1_iai_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.08_2_iai_slash aj.id run function animated_java:louvert/zzzzzzzz/animations/08_2_iai_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.08_2_iai_slash aj.id run scoreboard players operation @s aj.louvert.animation.08_2_iai_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.09_1_triple_slash_start aj.id run function animated_java:louvert/zzzzzzzz/animations/09_1_triple_slash_start/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.09_1_triple_slash_start aj.id run scoreboard players operation @s aj.louvert.animation.09_1_triple_slash_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.09_2_triple_slash_slash aj.id run function animated_java:louvert/zzzzzzzz/animations/09_2_triple_slash_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.09_2_triple_slash_slash aj.id run scoreboard players operation @s aj.louvert.animation.09_2_triple_slash_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.10_1_counter aj.id run function animated_java:louvert/zzzzzzzz/animations/10_1_counter/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.10_1_counter aj.id run scoreboard players operation @s aj.louvert.animation.10_1_counter.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.10_2_counter aj.id run function animated_java:louvert/zzzzzzzz/animations/10_2_counter/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.10_2_counter aj.id run scoreboard players operation @s aj.louvert.animation.10_2_counter.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.11_1_cast_magic aj.id run function animated_java:louvert/zzzzzzzz/animations/11_1_cast_magic/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.11_1_cast_magic aj.id run scoreboard players operation @s aj.louvert.animation.11_1_cast_magic.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.12_1_opening aj.id run function animated_java:louvert/zzzzzzzz/animations/12_1_opening/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.12_1_opening aj.id run scoreboard players operation @s aj.louvert.animation.12_1_opening.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.13_1_ending aj.id run function animated_java:louvert/zzzzzzzz/animations/13_1_ending/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.13_1_ending aj.id run scoreboard players operation @s aj.louvert.animation.13_1_ending.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.louvert.animation.14_1_falling_strike aj.id run function animated_java:louvert/zzzzzzzz/animations/14_1_falling_strike/apply_frame_as_root
execute if score #animation aj.i = $aj.louvert.animation.14_1_falling_strike aj.id run scoreboard players operation @s aj.louvert.animation.14_1_falling_strike.local_anim_time = #frame aj.i
execute at @s run function #animated_java:louvert/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i