#> asset:object/2160.haruclaire_ic_taurus/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2160.haruclaire_ic_taurus/tick/attack

# 予告円表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [24f, 24f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 20
    execute positioned ~ ~ ~ run function api:object/summon
