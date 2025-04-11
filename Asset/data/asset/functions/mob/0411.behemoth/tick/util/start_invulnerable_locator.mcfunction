#> asset:mob/0411.behemoth/tick/util/start_invulnerable_locator
#
# 汎用処理 無敵化
#
# @within asset:mob/0411.behemoth/tick/util/start_invulnerable

# 無敵化
    effect give @s resistance infinite 10 true
    data modify entity @s Invulnerable set value true
    tag @s add Uninterferable
