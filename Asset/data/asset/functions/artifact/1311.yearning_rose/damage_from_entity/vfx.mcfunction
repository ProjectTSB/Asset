#> asset:artifact/1311.yearning_rose/damage_from_entity/vfx
#
#
#
# @within function asset:artifact/1311.yearning_rose/damage_from_entity/3.main

# particle
    particle block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 30 normal @a

# playsound
    playsound entity.player.hurt_sweet_berry_bush player @a ~ ~ ~ 0.5 0.7
    playsound entity.player.hurt_sweet_berry_bush player @a ~ ~ ~ 0.5 0.6
    playsound minecraft:entity.spider.step player @a ~ ~ ~ 0.5 1

# 演出用Object召喚
# 使用者の方を向いて召喚する
    data modify storage api: Argument.ID set value 1152
    execute store result storage api: Argument.FieldOverride.TargetMobUUID int 1 run scoreboard players get @s MobUUID
    execute facing entity @p[tag=this] feet run function api:object/summon
