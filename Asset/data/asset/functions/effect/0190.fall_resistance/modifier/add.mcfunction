#> asset:effect/0190.fall_resistance/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0190.fall_resistance/given/

# 落下ダメージ無効化
    data modify storage api: Argument.UUID set value [I;1,3,190,0]
    execute store result storage api: Argument.Amount double 0.1 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/fall_resistance/add
