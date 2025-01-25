#> asset:artifact/0207.life_is_transitory/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/207/tick/


# TODO：CBT後にエフェクトにする

# 最大体力-99%
    data modify storage api: Argument.UUID set value [I;1,1,207,2]
    data modify storage api: Argument.Amount set value -0.99
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/max_health/add

# 効果・演出
    effect give @s invisibility infinite 1 true
    # particle minecraft:poof ~ ~ ~ 0 0 0 0.1 1
