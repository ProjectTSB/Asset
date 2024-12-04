#> asset:artifact/0563.heartland/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/563/tick/

    # 周囲5mのプレイヤーに既に自然回復エフェクトが付与されているかどうかを検知し、自然回復エフェクトを付与
        execute as @a[distance=..5] if predicate asset:artifact/0563.heartland/regene_check run effect give @a[distance=..5] regeneration 15 1 false