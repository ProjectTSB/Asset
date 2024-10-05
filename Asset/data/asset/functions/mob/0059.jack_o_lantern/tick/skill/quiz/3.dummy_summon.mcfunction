#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/3.dummy_summon
#
# 偽物を召喚する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/2.summon

# FieldOverrideに顔のデータを仕込む
    execute if score $Random Temporary matches 0 run data modify storage api: FieldOverride set value 20201
    execute if score $Random Temporary matches 1 run data modify storage api: FieldOverride set value 20202
    execute if score $Random Temporary matches 2 run data modify storage api: FieldOverride set value 20203
    execute if score $Random Temporary matches 3 run data modify storage api: FieldOverride set value 20204
    execute if score $Random Temporary matches 4 run data modify storage api: FieldOverride set value 20205
    execute if score $Random Temporary matches 5 run data modify storage api: FieldOverride set value 20206

# 召喚
    data modify storage api: Argument.ID set value 224
    function api:mob/summon
