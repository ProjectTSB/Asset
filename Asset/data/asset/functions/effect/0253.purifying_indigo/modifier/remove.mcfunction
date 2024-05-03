#> asset:effect/0253.purifying_indigo/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0253.purifying_indigo/end/
#   asset:effect/0253.purifying_indigo/remove/

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,3,253,0]
    function api:modifier/attack/water/remove
