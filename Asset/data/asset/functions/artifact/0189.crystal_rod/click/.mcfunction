#> asset:artifact/0189.crystal_rod/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/189/click/


# デバフを削除
    execute as @a[distance=..15] at @s run function asset:artifact/0189.crystal_rod/click/4.debuff_clear
