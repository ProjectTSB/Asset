#> asset:effect/0376.demons_blood/modify/remove
#
#
#
# @within function
#   asset:effect/0376.demons_blood/end/
#   asset:effect/0376.demons_blood/remove/

# 攻撃バフ削除
    data modify storage api: Argument.UUID set value [I;1,3,376,0]
    function api:modifier/attack/base/remove
# 最大Hpをもとに
    attribute @s minecraft:generic.max_health modifier remove f47ac10b-58cc-4372-a567-0e02b2c3d479
