#> asset:effect/374.charge_plasma/end/attack/1
#
# 攻撃（ため1段階）:スパーク
#
# @within function asset:effect/374.charge_plasma/end/**

#> Private
# @within function asset:effect/374.charge_plasma/end/attack/**
    #declare score_holder $rec

# 24回実行
    scoreboard players set $rec Temporary 24

# 向いている方向に確定で一個だす
    data modify storage api: Argument.ID set value 1168
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^2.5 run function api:object/summon

# 本体
    execute anchored eyes run function asset:effect/374.charge_plasma/end/attack/1/rec

# リセット
    scoreboard players reset $rec
    data remove storage asset:temp Args
