#> asset:effect/0276.unending_thunder/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0276.unending_thunder/given/

# 雷攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,3,276,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/thunder/add
