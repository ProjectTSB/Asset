#> asset:effect/0212.lunatic_moon/remove_modifier
# @within function asset:effect/0212.lunatic_moon/*/

# 魔法攻撃力
    data modify storage api: Argument.UUID set value [I;1,3,212,0]
    function api:modifier/attack/magic/remove
