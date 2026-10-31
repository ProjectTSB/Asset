#> asset:effect/0396.satelite_drop/given/summon.m
#
#
#
# @within function asset:effect/0396.satelite_drop/given/**

#> Private
# @private
    #declare score_holder $E0396.Rotation

# $E0396.Stackを再帰用にリサイクル
    scoreboard players remove $E0396.Stack Temporary 1

# Object1192召喚
    #攻撃情報
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.FieldOverride.ElementType set from storage asset:context this.ElementType
    data modify storage api: Argument.ID set value 1192
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    #$(Angle)°ずつ角度をを変えて召喚
    $scoreboard players set $E0396.Rotation Temporary $(Angle)
    execute store result storage api: Argument.FieldOverride.Angle int 1 run scoreboard players operation $E0396.Rotation Temporary *= $E0396.Stack Temporary
    $data modify storage api: Argument.FieldOverride.Count set value $(Count)
    execute rotated ~ 0 positioned ^ ^ ^0.75 run function api:object/summon

# リセット
    scoreboard players reset $E0396.Rotation

# 回転して再帰
    $execute rotated ~$(Angle) ~ if score $E0396.Stack Temporary matches 1.. run function asset:effect/0396.satelite_drop/given/summon.m with storage asset:temp Args
