#> asset:object/2180.tiamat_pillar/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2180.tiamat_pillar/tick/tick_kill

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [24f, 24f, 0.05f]
    execute if entity @s[tag=2180.Pillar.Thunder.2] run data modify storage api: Argument.FieldOverride.Scale set value [60f, 60f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 37
    function api:object/summon
