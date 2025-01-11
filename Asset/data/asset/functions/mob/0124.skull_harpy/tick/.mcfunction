#> asset:mob/0124.skull_harpy/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/124/tick

# スコア付与
    scoreboard players add @s General.Mob.Tick 1

# 周囲にプレイヤーがいる時、80tickに一度実行する
    execute if score @s General.Mob.Tick matches 80.. if entity @a[gamemode=!spectator,distance=..32] run function asset:mob/0124.skull_harpy/tick/motion
