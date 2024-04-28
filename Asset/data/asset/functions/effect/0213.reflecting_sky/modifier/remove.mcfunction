#> asset:effect/0213.reflecting_sky/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0213.reflecting_sky/end/
#   asset:effect/0213.reflecting_sky/remove/

# 水攻撃補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,213,0]
    function api:modifier/attack/water/remove