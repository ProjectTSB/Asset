#> asset:mob/0182.skull_raven/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/182/tick

# スコア付与
    scoreboard players add @s General.Mob.Tick 1

# 周囲にプレイヤーがいる時、50tickに一度実行する
    execute if score @s General.Mob.Tick matches 50.. if entity @a[gamemode=!spectator,distance=..32] run function asset:mob/0182.skull_raven/tick/motion
