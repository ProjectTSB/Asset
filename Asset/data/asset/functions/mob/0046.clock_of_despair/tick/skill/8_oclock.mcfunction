#> asset:mob/0046.clock_of_despair/tick/skill/8_oclock
#
# 時計レーザー + 固定火
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

execute if score @s 1A.LifeTime matches 1600 run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/init

execute if score @s 1A.LifeTime matches 1600 at @e[type=marker,tag=1A.SkillFF1,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:20,InterpolationTime:4}
execute if score @s 1A.LifeTime matches 1600 as @e[type=marker,tag=1A.SkillFF1,distance=..6.1] at @s positioned ~ ~2.0 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_order_marker.m {VisibleTime:200}
execute if score @s 1A.LifeTime matches 1600..1615 at @e[type=marker,tag=1A.SkillFF1,distance=..6.1] positioned ~ ~2.0 ~ run playsound minecraft:block.note_block.bell hostile @a ~ ~ ~ 1 1.8
execute if score @s 1A.LifeTime matches 1620 at @e[type=marker,tag=1A.SkillFF2,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:20,InterpolationTime:4}
execute if score @s 1A.LifeTime matches 1620 as @e[type=marker,tag=1A.SkillFF2,distance=..6.1] at @s positioned ~ ~2.0 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_order_marker.m {VisibleTime:180}
execute if score @s 1A.LifeTime matches 1620..1635 at @e[type=marker,tag=1A.SkillFF2,distance=..6.1] positioned ~ ~2.0 ~ run playsound minecraft:block.note_block.bell hostile @a ~ ~ ~ 1 1.8
execute if score @s 1A.LifeTime matches 1640 at @e[type=marker,tag=1A.SkillFF3,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:20,InterpolationTime:4}
execute if score @s 1A.LifeTime matches 1640 as @e[type=marker,tag=1A.SkillFF3,distance=..6.1] at @s positioned ~ ~2.0 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_order_marker.m {VisibleTime:160}
execute if score @s 1A.LifeTime matches 1640..1655 at @e[type=marker,tag=1A.SkillFF3,distance=..6.1] positioned ~ ~2.0 ~ run playsound minecraft:block.note_block.bell hostile @a ~ ~ ~ 1 1.8
execute if score @s 1A.LifeTime matches 1660 at @e[type=marker,tag=1A.SkillFF4,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:20,InterpolationTime:4}
execute if score @s 1A.LifeTime matches 1660 as @e[type=marker,tag=1A.SkillFF4,distance=..6.1] at @s positioned ~ ~2.0 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_order_marker.m {VisibleTime:140}
execute if score @s 1A.LifeTime matches 1660..1675 at @e[type=marker,tag=1A.SkillFF4,distance=..6.1] positioned ~ ~2.0 ~ run playsound minecraft:block.note_block.bell hostile @a ~ ~ ~ 1 1.8

execute if score @s 1A.LifeTime matches 1680 if predicate api:global_vars/difficulty/max/normal positioned ~010 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
execute if score @s 1A.LifeTime matches 1680 if predicate api:global_vars/difficulty/max/normal positioned ~016 ~6 ~010 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
execute if score @s 1A.LifeTime matches 1680 if predicate api:global_vars/difficulty/max/normal positioned ~-10 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
execute if score @s 1A.LifeTime matches 1680 if predicate api:global_vars/difficulty/max/normal positioned ~-16 ~6 ~-10 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon

execute if score @s 1A.LifeTime matches 1680 if predicate api:global_vars/difficulty/min/hard positioned ~08 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
execute if score @s 1A.LifeTime matches 1680 if predicate api:global_vars/difficulty/min/hard positioned ~016 ~6 ~08 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
execute if score @s 1A.LifeTime matches 1680 if predicate api:global_vars/difficulty/min/hard positioned ~-8 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
execute if score @s 1A.LifeTime matches 1680 if predicate api:global_vars/difficulty/min/hard positioned ~-16 ~6 ~-8 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon

execute if score @s 1A.LifeTime matches 1680 if predicate api:global_vars/difficulty/max/normal positioned ~ ~0.03 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon.m {PrepareTime:85}
execute if score @s 1A.LifeTime matches 1680 if predicate api:global_vars/difficulty/min/hard positioned ~ ~0.03 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon.m {PrepareTime:100}
execute if score @s 1A.LifeTime matches 1765 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage
execute if score @s 1A.LifeTime matches 1780 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage
