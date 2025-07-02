#> asset:effect/0608.sinking/modifier/add
#
# 補正を追加
#
# @within function
#   asset:effect/0608.sinking/given/
#   asset:effect/0608.sinking/re-given/

# Lvを取得
    execute store result score $Lv Temporary run data get storage asset:context Stack

# (-10×Lv)%分攻撃デバフを付与
    data modify storage api: Argument.UUID set value [I;1,3,608,0]
    execute store result storage api: Argument.Amount double -0.1 run scoreboard players get $Lv Temporary
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/base/add

# (-15xLv)%分移動速度デバフを付与
    execute store result storage asset:temp GW.SlownessAmount double -0.15 run scoreboard players get $Lv Temporary
    function asset:effect/0608.sinking/modifier/add_slowness.m with storage asset:temp GW

# リセット
    data remove storage asset:temp GW
    scoreboard players reset $Lv Temporary
