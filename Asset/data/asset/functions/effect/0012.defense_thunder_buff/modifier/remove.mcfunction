#> asset:effect/0012.defense_thunder_buff/modifier/remove
# @within function asset:effect/0012.defense_thunder_buff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,12,0]
    function api:modifier/defense/thunder/remove
