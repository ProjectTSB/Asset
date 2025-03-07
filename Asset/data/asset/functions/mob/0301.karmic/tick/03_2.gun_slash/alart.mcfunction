#> asset:mob/0301.karmic/tick/03_2.gun_slash/alart
#
#
#
# @within function asset:mob/0301.karmic/tick/03_2.gun_slash/main

# オーバーライドを設定
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 4654336
    data modify storage api: Argument.FieldOverride.Scale set value [8f, 8f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 7

    function api:object/summon
