#> asset:artifact/0563.heartland/trigger/fullset/tick/main
#
# フルセット時の効果
#
# @within function asset:artifact/0563.heartland/trigger/fullset/tick/trigger

# 周囲5mのプレイヤーに既に自然回復エフェクトが付与されているかどうかを検知し、自然回復エフェクトを付与
    execute as @a[distance=..5] if predicate asset:artifact/0563.heartland/regene_check run effect give @a[distance=..5] regeneration 15 1 false
