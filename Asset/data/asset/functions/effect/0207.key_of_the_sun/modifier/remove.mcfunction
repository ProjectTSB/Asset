#> asset:effect/0207.key_of_the_sun/modifier/remove
#
# 補正を付与する
#
# @within function
#   asset:effect/0207.key_of_the_sun/end/
#   asset:effect/0207.key_of_the_sun/remove/

# 火攻撃 +40%
    data modify storage api: Argument.UUID set value [I;1,3,207,0]
    function api:modifier/attack/fire/remove
