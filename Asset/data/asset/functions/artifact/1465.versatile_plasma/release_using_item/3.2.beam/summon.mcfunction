#> asset:artifact/1465.versatile_plasma/release_using_item/3.2.beam/summon
#
#
#
# @within function asset:artifact/1465.versatile_plasma/release_using_item/3.2.beam/

    data modify storage api: Argument.ID set value 1169

    # 攻撃情報
        data modify storage api: Argument.FieldOverride.Damage set value 150
        data modify storage api: Argument.FieldOverride.AdditionalMPHeal set value 5
        data modify storage api: Argument.FieldOverride.AttackType set value "Physical"
        data modify storage api: Argument.FieldOverride.ElementType set value "Thunder"

    # 発射体のField
        data modify storage api: Argument.FieldOverride.Speed set value 2
        data modify storage api: Argument.FieldOverride.Range set value 50

    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
