#> asset:effect/0367.water_affection/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0367.water_affection/re-given/
#   asset:effect/0367.water_affection/end/
#   asset:effect/0367.water_affection/remove/

# バフ解除
    data modify storage api: Argument.UUID set value [I;1,3,367,0]
    function api:modifier/defense/water/remove
