#> asset:effect/0260.life_steal/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0260.life_steal/given/
#   asset:effect/0260.life_steal/re-given/

# 物理攻撃
    data modify storage api: Argument.UUID set value [I;1,3,260,0]
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/physical/add
