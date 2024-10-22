scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.tultaria.export_version dummy
scoreboard objectives add aj.tultaria.rig_loaded dummy
scoreboard objectives add aj.tultaria.animation.neutral_air.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_1_right.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_1_left.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_2_right.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_2_left.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_3_right.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_3_right_loop.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_1.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_2.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_2_throw.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_3.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_4_windup.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_4_active.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.dodge_back.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.dodge_side.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.neutral_air.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_1_right.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_1_left.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_2_right.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_2_left.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_3_right.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_magic_3_right_loop.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_1.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_2.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_2_throw.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_3.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_4_windup.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.attack_melee_4_active.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.dodge_back.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.dodge_side.loop_mode dummy
scoreboard players set $aj.tultaria.animation.neutral_air aj.id 0
scoreboard players set $aj.tultaria.animation.attack_magic_1_right aj.id 1
scoreboard players set $aj.tultaria.animation.attack_magic_1_left aj.id 2
scoreboard players set $aj.tultaria.animation.attack_magic_2_right aj.id 3
scoreboard players set $aj.tultaria.animation.attack_magic_2_left aj.id 4
scoreboard players set $aj.tultaria.animation.attack_magic_3_right aj.id 5
scoreboard players set $aj.tultaria.animation.attack_magic_3_right_loop aj.id 6
scoreboard players set $aj.tultaria.animation.attack_melee_1 aj.id 7
scoreboard players set $aj.tultaria.animation.attack_melee_2 aj.id 8
scoreboard players set $aj.tultaria.animation.attack_melee_2_throw aj.id 9
scoreboard players set $aj.tultaria.animation.attack_melee_3 aj.id 10
scoreboard players set $aj.tultaria.animation.attack_melee_4_windup aj.id 11
scoreboard players set $aj.tultaria.animation.attack_melee_4_active aj.id 12
scoreboard players set $aj.tultaria.animation.dodge_back aj.id 13
scoreboard players set $aj.tultaria.animation.dodge_side aj.id 14
scoreboard players set $aj.tultaria.variant.normal aj.id 0
scoreboard players set $aj.tultaria.variant.winged aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.tultaria.export_version aj.i 1253684437
scoreboard players reset * aj.tultaria.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.tultaria.root] run function animated_java:tultaria/zzzzzzzz/on_load