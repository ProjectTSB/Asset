#> asset:effect/0335.solitariness/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0335.solitariness/_/tick


# 周囲にプレイヤーがいる、周囲にモブがいる場合にタグを吹き飛ばす
    execute if entity @a[distance=0.01..30] run function asset:effect/0335.solitariness/tick/effect_remove
    execute if entity @e[type=!player,tag=Friend,distance=..30] run function asset:effect/0335.solitariness/tick/effect_remove
