#> asset:effect/0407.inverse_proportionality/update/
#
#
#
# @within function asset:effect/0407.inverse_proportionality/**

#> Private
# @private
    #declare score_holder $Stack

# 一旦エフェクト消す
    data modify storage api: Argument.UUID set value [I;1,3,407,0]
    function api:modifier/defense/base/remove
    data modify storage api: Argument.UUID set value [I;1,3,407,0]
    function api:modifier/heal/remove

# マクロからスタック分のmodifierを適用
    execute store result score $Stack Temporary run data get storage asset:context Stack
    #なぜか値がリセットされているModifierは取得し直す
    execute store result score $Modifier Temporary run data get storage asset:context this.Modifier 1000
    execute store result storage asset:temp Args.Modifier double 0.001 run scoreboard players operation $Stack Temporary *= $Modifier Temporary
    function asset:effect/0407.inverse_proportionality/update/m with storage asset:temp Args

# リセット
    data remove storage asset:temp Args
    scoreboard players reset $Stack Temporary
