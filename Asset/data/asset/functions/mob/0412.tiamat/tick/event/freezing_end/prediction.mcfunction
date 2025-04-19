#> asset:mob/0412.tiamat/tick/event/freezing_end/prediction
#
# フリージングエンド
#
# @within asset:mob/0412.tiamat/tick/event/freezing_end/

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [80f, 80f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 10
    function api:object/summon
