#> asset:mob/0155.immorality/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/155/tick

# スコアを増やす
    scoreboard players add @s 4B.Tick 1

# 発砲準備で向きと位置を固定し、射撃回数を計算する
    execute if entity @s[scores={4B.Tick=0}] run function asset:mob/0155.immorality/tick/3.ready

# 発砲
    execute if entity @p[distance=..20] if entity @s[scores={4B.Tick=20..}] anchored eyes positioned ^-0.3 ^ ^1 run function asset:mob/0155.immorality/tick/4.shot_interval

# 計算した回数射撃したならリセット
# ShotCountは5.shot、ShotMaxは3.readyで計算している
    execute if score @s 4B.ShotCount >= @s 4B.ShotMax run function asset:mob/0155.immorality/tick/8.reset
