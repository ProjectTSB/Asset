#> asset:mob/0411.behemoth/tick/event/flatten/prediction
#
# フラッテン
#
# @within asset:mob/0411.behemoth/tick/event/flatten/

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [20f, 20f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 20
    function api:object/summon
