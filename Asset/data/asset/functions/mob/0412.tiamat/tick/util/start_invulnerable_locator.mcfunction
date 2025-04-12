#> asset:mob/0412.tiamat/tick/util/start_invulnerable_locator
#
# 汎用処理 無敵化
#
# @within asset:mob/0412.tiamat/tick/util/start_invulnerable

# 無敵化
    data modify entity @s Invulnerable set value true
    tag @s add Uninterferable
