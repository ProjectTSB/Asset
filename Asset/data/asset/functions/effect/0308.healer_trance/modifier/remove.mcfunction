#> asset:effect/0308.healer_trance/modifier/remove
#
#
#
# @within function asset:effect/0308.healer_trance/*/

# 攻撃
    data modify storage api: Argument.UUID set value [I;1,3,308,0]
    function api:modifier/attack/base/remove
