#> asset:mob/0058.divide_haze/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/58/hurt

# 増殖カウント減少
    scoreboard players remove @s 1M.Tick 10
