#> asset:object/2121.heiloang_tempest/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2121.heiloang_tempest/tick/
# @within asset:object/2121.heiloang_tempest/tick/attack

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 6607955
    data modify storage api: Argument.FieldOverride.Scale set value [14f, 14f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 3
    execute positioned ~ ~-1.5 ~ run function api:object/summon
