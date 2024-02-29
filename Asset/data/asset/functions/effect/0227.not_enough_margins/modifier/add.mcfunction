#> asset:effect/0227.not_enough_margins/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0227.not_enough_margins/given/
#   asset:effect/0227.not_enough_margins/re-given/

# Lvを取得
    execute store result score $Lv Temporary run data get storage asset:context Stack

# (Lv x 7.5)%の攻撃バフと耐性バフを付与
    data modify storage api: Argument.UUID set value [I;1,3,227,0]
    execute store result storage api: Argument.Amount double -0.075 run scoreboard players get $Lv Temporary
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

    data modify storage api: Argument.UUID set value [I;1,3,227,0]
    execute store result storage api: Argument.Amount double -0.075 run scoreboard players get $Lv Temporary
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add

# リセット
    scoreboard players reset $Lv Temporary