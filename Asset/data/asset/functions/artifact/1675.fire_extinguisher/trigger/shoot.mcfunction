#> asset:artifact/1675.fire_extinguisher/trigger/shoot
#
#
#
# @within function asset:artifact/1675.fire_extinguisher/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1.5
    data modify storage lib: Argument.Spread set value 0.8
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# 弾を召喚
    # ダメージ
        execute store result storage api: Argument.FieldOverride.Damage double 1 run random value 7..10
    # 射程
        data modify storage api: Argument.FieldOverride.Range set value 14
        data modify storage api: Argument.FieldOverride.Speed set value 5
    # 召喚
        data modify storage api: Argument.ID set value 1205
        execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
        execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
