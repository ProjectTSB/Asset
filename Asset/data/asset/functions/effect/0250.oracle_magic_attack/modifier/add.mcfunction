#> asset:effect/0250.oracle_magic_attack/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0250.oracle_magic_attack/given/

# 魔法攻撃+8%
    data modify storage api: Argument.UUID set value [I;1,3,250,0]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/magic/add
