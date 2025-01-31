#> asset:artifact/0562.heartland/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/562/tick/

# 周囲5mのプレイヤーに自然回復エフェクトを付与
# このとき、上位エフェクトを上書きしないようにする
    execute as @a[distance=..5] if predicate asset:artifact/0563.heartland/regene_check run effect give @s[distance=..5] regeneration 15 1 false
