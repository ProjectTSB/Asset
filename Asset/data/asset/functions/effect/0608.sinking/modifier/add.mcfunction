#> asset:effect/0608.sinking/modifier/add
#
# 補正を追加
#
# @within function
#   asset:effect/0608.sinking/given/
#   asset:effect/0608.sinking/re-given/

# Lvを取得
    execute store result score $Lv Temporary run data get storage asset:context Stack

# (-25×Lv)%分攻撃デバフを付与
    data modify storage api: Argument.UUID set value [I;1,3,608,0]
    execute store result storage api: Argument.Amount double -0.25 run scoreboard players get $Lv Temporary
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/base/add

# リセット
    scoreboard players reset $Lv Temporary