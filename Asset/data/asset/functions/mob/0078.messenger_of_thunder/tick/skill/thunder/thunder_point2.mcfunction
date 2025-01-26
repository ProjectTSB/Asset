#> asset:mob/0078.messenger_of_thunder/tick/skill/thunder/thunder_point2
#
# 雷を落とす処理2
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/thunder_point1

# 演出
    playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1 1.2 0

# SpreadMarkerを召喚し、拡散
    summon marker ~ ~ ~ {Tags:["26.SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    execute as @e[type=marker,tag=26.SpreadMarker,distance=..0.01,limit=1] run function lib:spread_entity/

# 召喚
    data modify storage api: Argument.ID set value 2057
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Thunder
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @e[type=marker,tag=26.SpreadMarker,distance=..20,limit=1] run function api:object/summon

# リセット
    kill @e[type=marker,tag=26.SpreadMarker,distance=..20]
