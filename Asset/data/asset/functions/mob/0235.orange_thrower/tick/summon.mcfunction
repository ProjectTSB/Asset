#> asset:mob/0235.orange_thrower/tick/summon
#
# みかんを召喚する処理
#
# @within function asset:mob/0235.orange_thrower/tick/attack

# みかんの数のデクリメント
    execute store result storage asset:context this.OrangeCount int 0.9999999999 run data get storage asset:context this.OrangeCount

# みかんを召喚
    data modify storage api: Argument.ID set value 2079
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Orange
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
