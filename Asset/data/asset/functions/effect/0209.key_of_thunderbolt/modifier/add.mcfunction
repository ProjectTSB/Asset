#> asset:effect/0209.key_of_thunderbolt/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0209.key_of_thunderbolt/given/

# 雷攻撃 +40%
    data modify storage api: Argument.UUID set value [I;1,3,209,0]
    data modify storage api: Argument.Amount set value 0.40d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/thunder/add
