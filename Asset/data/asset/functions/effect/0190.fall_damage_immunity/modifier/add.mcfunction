#> asset:effect/0190.fall_damage_immunity/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0190.fall_damage_immunity/given/

# 落下ダメージ無効化
    data modify storage api: Argument.UUID set value [I;1,3,190,0]
    data modify storage api: Argument.Amount set value 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/fall_resistance/add
