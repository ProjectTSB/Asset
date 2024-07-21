#> asset:effect/0260.life_steal/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0260.life_steal/given/
#   asset:effect/0260.life_steal/re-given/

# 物理攻撃 + (最大HP * 0.125) %
    data modify storage api: Argument.UUID set value [I;1,1,1047,7]
    execute store result storage api: Argument.Amount float 0.001 run attribute @s minecraft:generic.max_health get 1.25
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/physical/add
