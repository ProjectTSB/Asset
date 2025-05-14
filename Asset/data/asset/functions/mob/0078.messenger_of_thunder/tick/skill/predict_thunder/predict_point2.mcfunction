#> asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point2
#
# 偏差の処理2
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/3.predict_point1.m

# AECを召喚して拡散するを5回繰り返す
# それぞれ起爆までの時間をそれぞれ設定する
    data modify storage api: Argument.FieldOverride.Tick set value 22
    function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point3

    data modify storage api: Argument.FieldOverride.Tick set value 24
    function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point3

    data modify storage api: Argument.FieldOverride.Tick set value 26
    function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point3

    data modify storage api: Argument.FieldOverride.Tick set value 28
    function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point3

    data modify storage api: Argument.FieldOverride.Tick set value 30
    function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point3

# ハードかつ体力半分以下で追加で2本召喚する
    execute if entity @s[tag=26.HPLess50Per] if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Tick set value 27
    execute if entity @s[tag=26.HPLess50Per] if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point3

    execute if entity @s[tag=26.HPLess50Per] if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Tick set value 29
    execute if entity @s[tag=26.HPLess50Per] if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point3
