#> asset:effect/0368.thunder_affection/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0368.thunder_affection/re-given/
#   asset:effect/0368.thunder_affection/end/
#   asset:effect/0368.thunder_affection/remove/

# バフ解除
    data modify storage api: Argument.UUID set value [I;1,3,368,0]
    function api:modifier/defense/thunder/remove
