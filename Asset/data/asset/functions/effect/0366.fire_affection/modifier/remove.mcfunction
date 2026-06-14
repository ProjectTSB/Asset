#> asset:effect/0366.fire_affection/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0366.fire_affection/re-given/
#   asset:effect/0366.fire_affection/end/
#   asset:effect/0366.fire_affection/remove/

# バフ解除
    data modify storage api: Argument.UUID set value [I;1,3,366,0]
    function api:modifier/defense/fire/remove
