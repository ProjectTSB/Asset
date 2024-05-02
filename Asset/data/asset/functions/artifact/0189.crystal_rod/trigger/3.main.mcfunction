#> asset:artifact/0189.crystal_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0189.crystal_rod/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# デバフを削除
    execute as @a[distance=..15] at @s run function asset:artifact/0189.crystal_rod/trigger/4.debuff_clear
