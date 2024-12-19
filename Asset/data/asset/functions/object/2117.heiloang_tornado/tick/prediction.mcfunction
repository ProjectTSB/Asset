#> asset:object/2117.heiloang_tornado/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2117.heiloang_tornado/tick/

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 6607955
    data modify storage api: Argument.FieldOverride.Scale set value [16f, 16f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 60
    execute positioned ~ ~-0.3 ~ run function api:object/summon
