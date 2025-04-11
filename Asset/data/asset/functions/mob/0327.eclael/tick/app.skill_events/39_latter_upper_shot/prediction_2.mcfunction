#> asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/prediction_2
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main_hard

# 予告
    execute at @s run tp @s ~ ~ ~ ~10 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16765324
    data modify storage api: Argument.FieldOverride.Scale set value [3f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 17
    execute at @s positioned ^ ^ ^ run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~-20 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16765324
    data modify storage api: Argument.FieldOverride.Scale set value [3f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 17
    execute at @s positioned ^ ^ ^ run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~40 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16765324
    data modify storage api: Argument.FieldOverride.Scale set value [3f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 17
    execute at @s positioned ^ ^ ^ run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~-60 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16765324
    data modify storage api: Argument.FieldOverride.Scale set value [3f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 17
    execute at @s positioned ^ ^ ^ run function api:object/summon

    tp @s ~ ~ ~ ~ ~
