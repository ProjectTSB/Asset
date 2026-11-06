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
        data modify storage api: Argument.FieldOverride.Damage set value 10d
    # 射程 (数値×2)
        data modify storage api: Argument.FieldOverride.Range set value 16
    # 弾速 (といっても少しずつ遅くなる 1tickに2.5,次tickは2、次は1.5..)
        data modify storage api: Argument.FieldOverride.Speed set value 5

    # 減衰
        # ダメージ減衰がどれくらい進んだ時から始まるか(数値÷2)
            data modify storage api: Argument.FieldOverride.Attenuation.Start set value 9
        # 0.5ブロック進むごとのダメージ減少量
            data modify storage api: Argument.FieldOverride.Attenuation.Amount set value 1d
        # 最小ダメージ
            data modify storage api: Argument.FieldOverride.Attenuation.MinDamage set value 4d

    # 召喚
        data modify storage api: Argument.ID set value 1205
        execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
        execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
