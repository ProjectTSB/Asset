#> asset:effect/0208.key_of_shower_rain/modifier/remove
#
# 補正を付与する
#
# @within function
#   asset:effect/0208.key_of_shower_rain/end/
#   asset:effect/0208.key_of_shower_rain/remove/

# 水攻撃 +40%
    data modify storage api: Argument.UUID set value [I;1,3,208,0]
    function api:modifier/attack/water/remove
