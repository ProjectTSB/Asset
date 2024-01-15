#> asset:effect/0012.defense_thunder_buff/remove_modifier
# @within function asset:effect/0012.defense_thunder_buff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,12,0]
    data modify storage api: Argument.UUID[-2] set from storage asset:context id
    function api:modifier/defense/thunder/remove
