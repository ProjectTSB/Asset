#> asset:mob/0257.distortion_spellbook/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/257/hurt

# ランダムテレポート
    execute if predicate lib:random_pass_per/15 run function asset:mob/0257.distortion_spellbook/hurt/3.teleport
