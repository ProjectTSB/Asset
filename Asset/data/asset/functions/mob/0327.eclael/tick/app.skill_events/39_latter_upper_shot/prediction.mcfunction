#> asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/prediction
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16765324
    data modify storage api: Argument.FieldOverride.Scale set value [3f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 17
    execute at @s positioned ^ ^ ^ run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~20 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16765324
    data modify storage api: Argument.FieldOverride.Scale set value [3f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 17
    execute at @s positioned ^ ^ ^ run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~-40 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16765324
    data modify storage api: Argument.FieldOverride.Scale set value [3f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 17
    execute at @s positioned ^ ^ ^ run function api:object/summon

# イージーでは3Way
    execute if predicate api:global_vars/difficulty/easy run return run tp @s ~ ~ ~ ~ ~

    execute at @s run tp @s ~ ~ ~ ~60 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16765324
    data modify storage api: Argument.FieldOverride.Scale set value [3f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 17
    execute at @s positioned ^ ^ ^ run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~-80 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16765324
    data modify storage api: Argument.FieldOverride.Scale set value [3f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 17
    execute at @s positioned ^ ^ ^ run function api:object/summon

# 角度もどす
    tp @s ~ ~ ~ ~ ~
