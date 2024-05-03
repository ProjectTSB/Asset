#> asset:effect/0014.receive_heal_buff/modifier/remove
# @within function asset:effect/0014.receive_heal_buff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,14,0]
    function api:modifier/receive_heal/remove
