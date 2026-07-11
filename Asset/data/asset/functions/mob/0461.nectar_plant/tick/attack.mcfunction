#> asset:mob/0461.nectar_plant/tick/attack
#
#
#
# @within function asset:mob/0461.nectar_plant/tick/

# 演出用Object召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.5f,20f,0.5f],Color:16732083,DisappearInterpolation:4,LifeTime:12}
    execute anchored eyes positioned ^ ^ ^ rotated ~ -90 run function api:object/summon

# 演出
    execute anchored eyes positioned ^ ^ ^ run particle dust 1 0.46 0.87 1.5 ~ ~12 ~ 0.3 10 0.3 0 60 normal @a
    playsound entity.warden.death hostile @a ~ ~ ~ 1 1.8
    playsound entity.warden.death hostile @a ~ ~ ~ 1 1.75
    playsound minecraft:entity.squid.squirt hostile @a ~ ~ ~ 0.6 0.9

# Object召喚
    execute at @p[gamemode=!spectator,distance=..16] run function asset:mob/0461.nectar_plant/tick/summon_object/check
