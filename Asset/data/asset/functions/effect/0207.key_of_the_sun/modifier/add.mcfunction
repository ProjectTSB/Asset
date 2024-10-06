#> asset:effect/0207.key_of_the_sun/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0207.key_of_the_sun/given/

# 火攻撃 +40%
    data modify storage api: Argument.UUID set value [I;1,3,207,0]
    data modify storage api: Argument.Amount set value 0.40d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/fire/add
