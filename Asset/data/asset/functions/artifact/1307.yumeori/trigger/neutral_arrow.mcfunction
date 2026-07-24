#> asset:artifact/1307.yumeori/trigger/neutral_arrow
#
#
#
# @within function asset:artifact/1307.yumeori/trigger/3.main

# 矢を召喚する
    # ダメージ
        data modify storage api: Argument.FieldOverride.Damage set value 200
    # 射程
        data modify storage api: Argument.FieldOverride.Range set value 50
    # 弾速
        data modify storage api: Argument.FieldOverride.Speed set value 8

    # 連続ヒットの猶予
        data modify storage api: Argument.FieldOverride.Effect.Count.Duration set value 80
    # 曲射するためには何連続のヒットが必要か？
        data modify storage api: Argument.FieldOverride.Effect.Count.MaxStack set value 3

    # 曲射バフの効果時間
        data modify storage api: Argument.FieldOverride.Effect.CurveShot.Duration set value 200

    # 召喚
        data modify storage api: Argument.ID set value 1176
        execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
        data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
        execute anchored eyes positioned ^ ^ ^ run function api:object/summon
