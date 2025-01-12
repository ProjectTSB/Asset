#> asset:artifact/0207.life_is_transitory/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0207.life_is_transitory/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# TODO：CBT後にエフェクトにする

# 最大体力-99.9%
    data modify storage api: Argument.UUID set value [I;1,1,207,2]
    data modify storage api: Argument.Amount set value -0.999
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/max_health/add

# 効果・演出
    effect give @s invisibility infinite 1 true
    # particle minecraft:poof ~ ~ ~ 0 0 0 0.1 1
