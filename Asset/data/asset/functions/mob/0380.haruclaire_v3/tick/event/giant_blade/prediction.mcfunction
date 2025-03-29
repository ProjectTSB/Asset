#> asset:mob/0380.haruclaire_v3/tick/event/giant_blade/prediction
#
# ジャイアントブレード
#
# @within asset:mob/0380.haruclaire_v3/tick/event/giant_blade/

# 地面に合わせる
    summon area_effect_cloud ^ ^ ^ {Tags:["AK.Temp.AttackPosition"],Duration:1}
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor

# 予告線表示
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [8f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 10
    data modify storage api: Argument.FieldOverride.Tick set value 20
    execute positioned as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition] positioned ~ ~0.6 ~ run function api:object/summon
