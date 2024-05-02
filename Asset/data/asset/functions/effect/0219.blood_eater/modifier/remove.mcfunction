#> asset:effect/0219.blood_eater/modifier/remove
#
#
#
# @within function
#   asset:effect/0219.blood_eater/remove/
#   asset:effect/0219.blood_eater/end/

# 攻撃補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,219,0]
    function api:modifier/attack/base/remove
