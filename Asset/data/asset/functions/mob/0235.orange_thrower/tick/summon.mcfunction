#> asset:mob/0235.orange_thrower/tick/summon
#
# みかんを召喚する処理
#
# @within function asset:mob/0235.orange_thrower/tick/attack

# みかんを召喚
    data modify storage api: Argument.ID set value 2079
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @p[distance=..10] positioned ~ ~2.5 ~ run function api:object/summon
