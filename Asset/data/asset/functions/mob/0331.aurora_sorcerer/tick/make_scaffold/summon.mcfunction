#> asset:mob/0331.aurora_sorcerer/tick/make_scaffold/summon
#
# 足場を召喚
#
# @within function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/

# 現座標の直ぐ側に足場がいるならreturn
    execute if entity @e[type=item_display,scores={ObjectID=2221},dx=0] run return fail

# 召喚
    data modify storage api: Argument.ID set value 2221
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
