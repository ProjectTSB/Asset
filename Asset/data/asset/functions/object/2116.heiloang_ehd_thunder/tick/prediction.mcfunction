#> asset:object/2116.heiloang_ehd_thunder/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2116.heiloang_ehd_thunder/tick/

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.Scale set value [50f, 50f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 140
    execute positioned ~ ~0.28 ~ run function api:object/summon
