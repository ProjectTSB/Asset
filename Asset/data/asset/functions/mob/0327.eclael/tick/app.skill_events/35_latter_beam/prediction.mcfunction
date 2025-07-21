#> asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/prediction
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/main

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [20f, 20f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 45
    execute positioned ~ ~ ~ run function api:object/summon
