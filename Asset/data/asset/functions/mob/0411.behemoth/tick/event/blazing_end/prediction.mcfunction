#> asset:mob/0411.behemoth/tick/event/blazing_end/prediction
#
# ブレイジングエンド
#
# @within asset:mob/0411.behemoth/tick/event/blazing_end/

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 16727040
    data modify storage api: Argument.FieldOverride.Scale set value [80f, 80f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 10
    function api:object/summon
