#> asset:effect/0201.magic_shield/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0201.magic_shield/_/tick

# 演出
    execute if predicate lib:random_pass_per/40 run particle enchanted_hit ~ ~1.2 ~ 0.4 0.4 0.4 0 1 normal @a

# 耐性を付与(ダメージ80%カット)
    effect give @s resistance 1 7 true
