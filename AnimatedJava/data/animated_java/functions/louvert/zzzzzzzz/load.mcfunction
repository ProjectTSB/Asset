scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.louvert.export_version dummy
scoreboard objectives add aj.louvert.rig_loaded dummy
scoreboard objectives add aj.louvert.animation.01_idle.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.02_1_damage.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.02_2_damage.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.03_1_fire_slash_charge_1.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.03_2_fire_slash_slash_1.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.04_1_flame_magic_cast.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.05_1_blade_cutter.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.06_1_move_start.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.06_2_moving.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.06_3_move_stop.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.06_4_move_attack.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.07_1_soul_magic_cast.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.09_1_triple_slash_start.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.09_2_triple_slash_slash.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.10_1_counter.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.11_1_cast_magic.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.12_1_opening.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.13_1_ending.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.14_1_falling_strike.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.15_1_final_spell.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.15_2_final_spell_iai_start.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.15_3_final_spell_iai_finish.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.15_4_final_spell_fire.local_anim_time dummy
scoreboard objectives add aj.louvert.animation.01_idle.loop_mode dummy
scoreboard objectives add aj.louvert.animation.02_1_damage.loop_mode dummy
scoreboard objectives add aj.louvert.animation.02_2_damage.loop_mode dummy
scoreboard objectives add aj.louvert.animation.03_1_fire_slash_charge_1.loop_mode dummy
scoreboard objectives add aj.louvert.animation.03_2_fire_slash_slash_1.loop_mode dummy
scoreboard objectives add aj.louvert.animation.04_1_flame_magic_cast.loop_mode dummy
scoreboard objectives add aj.louvert.animation.05_1_blade_cutter.loop_mode dummy
scoreboard objectives add aj.louvert.animation.06_1_move_start.loop_mode dummy
scoreboard objectives add aj.louvert.animation.06_2_moving.loop_mode dummy
scoreboard objectives add aj.louvert.animation.06_3_move_stop.loop_mode dummy
scoreboard objectives add aj.louvert.animation.06_4_move_attack.loop_mode dummy
scoreboard objectives add aj.louvert.animation.07_1_soul_magic_cast.loop_mode dummy
scoreboard objectives add aj.louvert.animation.09_1_triple_slash_start.loop_mode dummy
scoreboard objectives add aj.louvert.animation.09_2_triple_slash_slash.loop_mode dummy
scoreboard objectives add aj.louvert.animation.10_1_counter.loop_mode dummy
scoreboard objectives add aj.louvert.animation.11_1_cast_magic.loop_mode dummy
scoreboard objectives add aj.louvert.animation.12_1_opening.loop_mode dummy
scoreboard objectives add aj.louvert.animation.13_1_ending.loop_mode dummy
scoreboard objectives add aj.louvert.animation.14_1_falling_strike.loop_mode dummy
scoreboard objectives add aj.louvert.animation.15_1_final_spell.loop_mode dummy
scoreboard objectives add aj.louvert.animation.15_2_final_spell_iai_start.loop_mode dummy
scoreboard objectives add aj.louvert.animation.15_3_final_spell_iai_finish.loop_mode dummy
scoreboard objectives add aj.louvert.animation.15_4_final_spell_fire.loop_mode dummy
scoreboard players set $aj.louvert.animation.01_idle aj.id 0
scoreboard players set $aj.louvert.animation.02_1_damage aj.id 1
scoreboard players set $aj.louvert.animation.02_2_damage aj.id 2
scoreboard players set $aj.louvert.animation.03_1_fire_slash_charge_1 aj.id 3
scoreboard players set $aj.louvert.animation.03_2_fire_slash_slash_1 aj.id 4
scoreboard players set $aj.louvert.animation.04_1_flame_magic_cast aj.id 5
scoreboard players set $aj.louvert.animation.05_1_blade_cutter aj.id 6
scoreboard players set $aj.louvert.animation.06_1_move_start aj.id 7
scoreboard players set $aj.louvert.animation.06_2_moving aj.id 8
scoreboard players set $aj.louvert.animation.06_3_move_stop aj.id 9
scoreboard players set $aj.louvert.animation.06_4_move_attack aj.id 10
scoreboard players set $aj.louvert.animation.07_1_soul_magic_cast aj.id 11
scoreboard players set $aj.louvert.animation.09_1_triple_slash_start aj.id 12
scoreboard players set $aj.louvert.animation.09_2_triple_slash_slash aj.id 13
scoreboard players set $aj.louvert.animation.10_1_counter aj.id 14
scoreboard players set $aj.louvert.animation.11_1_cast_magic aj.id 15
scoreboard players set $aj.louvert.animation.12_1_opening aj.id 16
scoreboard players set $aj.louvert.animation.13_1_ending aj.id 17
scoreboard players set $aj.louvert.animation.14_1_falling_strike aj.id 18
scoreboard players set $aj.louvert.animation.15_1_final_spell aj.id 19
scoreboard players set $aj.louvert.animation.15_2_final_spell_iai_start aj.id 20
scoreboard players set $aj.louvert.animation.15_3_final_spell_iai_finish aj.id 21
scoreboard players set $aj.louvert.animation.15_4_final_spell_fire aj.id 22
scoreboard players set $aj.louvert.variant.default aj.id 0
scoreboard players set $aj.louvert.variant.closed_eyes aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.louvert.export_version aj.i 48958920
scoreboard players reset * aj.louvert.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.louvert.root] run function animated_java:louvert/zzzzzzzz/on_load