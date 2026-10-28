#> asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/summon.m
#
#
#
# @within function asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/rec

    data modify storage api: Argument.ID set value 1168
    # 攻撃情報
        data modify storage api: Argument.FieldOverride.Damage set value 30
        data modify storage api: Argument.FieldOverride.AdditionalMPHeal set value 5
        data modify storage api: Argument.FieldOverride.AttackType set value "Physical"
        data modify storage api: Argument.FieldOverride.ElementType set value "Thunder"

    # 存在時間
        execute store result storage api: Argument.FieldOverride.Tick int 1 run random value 2..7

    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    $execute positioned ^$(OffsetX) ^$(OffsetY) ^$(OffsetZ) run function api:object/summon
