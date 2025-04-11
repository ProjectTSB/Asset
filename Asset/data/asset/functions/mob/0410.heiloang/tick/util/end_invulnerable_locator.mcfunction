#> asset:mob/0410.heiloang/tick/util/end_invulnerable_locator
#
# 汎用処理 無敵化解除
#
# @within asset:mob/0410.heiloang/tick/util/end_invulnerable

# 無敵化解除
    effect clear @s resistance
    data modify entity @s Invulnerable set value false
    tag @s remove Uninterferable
