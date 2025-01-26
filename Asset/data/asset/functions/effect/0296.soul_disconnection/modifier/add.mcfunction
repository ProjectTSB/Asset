#> asset:effect/0296.soul_disconnection/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0296.soul_disconnection/given/
#   asset:effect/0296.soul_disconnection/re-given/

#> private
# @private
    #declare score_holder $Stack

# 変数を取得
    execute store result score $Stack Temporary run data get storage asset:context Stack
    scoreboard players operation $Stack Temporary < $4 Const

# 攻撃
    data modify storage api: Argument.UUID set value [I;1,3,296,0]
    execute store result storage api: Argument.Amount double -0.25 run scoreboard players get $Stack Temporary
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# リセット
    scoreboard players reset $Stack Temporary
