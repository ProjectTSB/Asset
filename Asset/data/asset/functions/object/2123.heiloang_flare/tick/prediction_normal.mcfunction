#> asset:object/2123.heiloang_flare/tick/prediction_normal
#
# Objectのtick時の処理
#
# @within asset:object/2123.heiloang_flare/tick/

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 10684938
    data modify storage api: Argument.FieldOverride.Scale set value [10f, 10f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 13
    execute positioned ~ ~ ~ run function api:object/summon
