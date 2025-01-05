#> asset:effect/0208.key_of_shower_rain/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0208.key_of_shower_rain/given/

# 水攻撃 +40%
    data modify storage api: Argument.UUID set value [I;1,3,208,0]
    data modify storage api: Argument.Amount set value 0.40d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/water/add
