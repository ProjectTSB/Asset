#> asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/
#
#
#
# @within function asset:artifact/1465.versatile_plasma/release_using_item/2.check_condition

#> Private
# @within function asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/*
    #declare score_holder $rec

# 36回実行
    scoreboard players set $rec Temporary 36

# 向いている方向に確定で一個だす
    data modify storage api: Argument.ID set value 1168
    data modify storage api: Argument.FieldOverride.Damage set value 30
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set value 5
    data modify storage api: Argument.FieldOverride.AttackType set value "Physical"
    data modify storage api: Argument.FieldOverride.ElementType set value "Thunder"
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^2.5 run function api:object/summon

# 本体
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/rec

# リセット
    scoreboard players reset $rec
    data remove storage asset:temp Args
