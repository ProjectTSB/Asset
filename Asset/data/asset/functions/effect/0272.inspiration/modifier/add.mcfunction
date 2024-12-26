#> asset:effect/0272.inspiration/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0272.inspiration/given/

# 物理攻撃+20%
    data modify storage api: Argument.UUID set value [I;1,3,272,0]
    data modify storage api: Argument.Amount set value 0.2
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/physical/add
