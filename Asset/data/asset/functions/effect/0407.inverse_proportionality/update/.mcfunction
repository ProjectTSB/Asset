#> asset:effect/0407.inverse_proportionality/update/
#
#
#
# @within function asset:effect/0407.inverse_proportionality/**

#> Private
# @private
    #declare score_holder $E0407.Stack

# 一旦エフェクト消す
    data modify storage api: Argument.UUID set value [I;1,3,407,0]
    function api:modifier/defense/base/remove
    data modify storage api: Argument.UUID set value [I;1,3,407,0]
    function api:modifier/heal/remove

# マクロからスタック分のmodifierを適用
    execute store result score $E0407.Stack Temporary run data get storage asset:context Stack
    execute store result storage asset:temp Args.Modifier double 0.001 run scoreboard players operation $E0407.Stack Temporary *= $E0407.Modifier Temporary
    function asset:effect/0407.inverse_proportionality/update/m with storage asset:temp Args

# リセット
    data remove storage asset:temp Args
    scoreboard players reset $E0407.Stack Temporary
