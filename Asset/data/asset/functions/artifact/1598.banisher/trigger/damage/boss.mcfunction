#> asset:artifact/1598.banisher/trigger/damage/boss
#
#
#
# @within function asset:artifact/1598.banisher/trigger/damage/

# 残留攻撃(Object 1188)を召喚
    data modify storage api: Argument.ID set value 1188
    execute store result storage api: Argument.UserID int 1 run scoreboard players get @s UserID
    #攻撃情報を持たせる
    data modify storage api: Argument.FieldOverride.Damage set value 200
    data modify storage api: Argument.FieldOverride.AttackType set value "Magic"
    data modify storage api: Argument.FieldOverride.AttackElement set value "None"

    function api:object/summon
