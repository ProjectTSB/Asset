scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.lexiel.export_version dummy
scoreboard objectives add aj.lexiel.rig_loaded dummy
scoreboard objectives add aj.lexiel.animation.neutral.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.attack1.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.attack2.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.attack3_1.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.attack3_2.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.magic1.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.magic2.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.magic3.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.attack4.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.rod.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.death.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.spawn.local_anim_time dummy
scoreboard objectives add aj.lexiel.animation.neutral.loop_mode dummy
scoreboard objectives add aj.lexiel.animation.attack1.loop_mode dummy
scoreboard objectives add aj.lexiel.animation.attack2.loop_mode dummy
scoreboard objectives add aj.lexiel.animation.attack3_1.loop_mode dummy
scoreboard objectives add aj.lexiel.animation.attack3_2.loop_mode dummy
scoreboard objectives add aj.lexiel.animation.magic1.loop_mode dummy
scoreboard objectives add aj.lexiel.animation.magic2.loop_mode dummy
scoreboard objectives add aj.lexiel.animation.magic3.loop_mode dummy
scoreboard objectives add aj.lexiel.animation.attack4.loop_mode dummy
scoreboard objectives add aj.lexiel.animation.rod.loop_mode dummy
scoreboard objectives add aj.lexiel.animation.death.loop_mode dummy
scoreboard objectives add aj.lexiel.animation.spawn.loop_mode dummy
scoreboard players set $aj.lexiel.animation.neutral aj.id 0
scoreboard players set $aj.lexiel.animation.attack1 aj.id 1
scoreboard players set $aj.lexiel.animation.attack2 aj.id 2
scoreboard players set $aj.lexiel.animation.attack3_1 aj.id 3
scoreboard players set $aj.lexiel.animation.attack3_2 aj.id 4
scoreboard players set $aj.lexiel.animation.magic1 aj.id 5
scoreboard players set $aj.lexiel.animation.magic2 aj.id 6
scoreboard players set $aj.lexiel.animation.magic3 aj.id 7
scoreboard players set $aj.lexiel.animation.attack4 aj.id 8
scoreboard players set $aj.lexiel.animation.rod aj.id 9
scoreboard players set $aj.lexiel.animation.death aj.id 10
scoreboard players set $aj.lexiel.animation.spawn aj.id 11
scoreboard players set $aj.lexiel.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.lexiel.export_version aj.i 684432708
scoreboard players reset * aj.lexiel.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.lexiel.root] run function animated_java:lexiel/zzzzzzzz/on_load