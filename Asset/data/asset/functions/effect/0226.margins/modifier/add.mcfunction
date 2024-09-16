#> asset:effect/0226.margins/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0226.margins/given/
#   asset:effect/0226.margins/re-given/

# Stackを取得
    execute store result score $Stack Temporary run data get storage asset:context Stack

# (Stack x 7.5)%の攻撃バフと耐性バフを付与
    data modify storage api: Argument.UUID set value [I;1,3,226,0]
    execute store result storage api: Argument.Amount double 0.075 run scoreboard players get $Stack Temporary
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

    data modify storage api: Argument.UUID set value [I;1,3,226,0]
    execute store result storage api: Argument.Amount double 0.075 run scoreboard players get $Stack Temporary
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add

# リセット
    scoreboard players reset $Stack Temporary

# デバッグ用
    say 余白
    tellraw @p {"storage":"asset:context","nbt":"Stack"}
