#> asset:mob/0412.tiamat/tick/util/end_invulnerable_locator
#
# 汎用処理 無敵化解除
#
# @within asset:mob/0412.tiamat/tick/util/end_invulnerable

# 無敵化解除
    effect clear @s resistance
    effect give @s resistance infinite 2 true
