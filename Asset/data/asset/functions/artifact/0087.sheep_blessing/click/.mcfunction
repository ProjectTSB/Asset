#> asset:artifact/0087.sheep_blessing/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/87/click/

# 羊毛消費
    clear @s white_wool 16

# 羊の加護エフェクトを付与
    data modify storage api: Argument.ID set value 202
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
