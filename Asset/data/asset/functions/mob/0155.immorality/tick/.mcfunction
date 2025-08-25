#> asset:mob/0155.immorality/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/155/tick

# スコアを増やす
    scoreboard players add @s General.Mob.Tick 1

# 発砲準備で向きと位置を固定し、射撃回数を計算する
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0155.immorality/tick/shot/ready

# 予告
    execute if entity @s[scores={General.Mob.Tick=1..39}] run function asset:mob/0155.immorality/tick/announce/

# 発砲
    execute if entity @s[scores={General.Mob.Tick=40..}] anchored eyes positioned ^-0.3 ^ ^1 run function asset:mob/0155.immorality/tick/shot/interval

# 計算した回数射撃したならリセット
# ShotCountは5.shot、ShotMaxは3.readyで計算している
    execute if score @s 4B.ShotCount >= @s 4B.ShotMax run function asset:mob/0155.immorality/tick/shot/reset
