#> asset:mob/0233.honey_flyer/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/233/tick

# スコア付与
    scoreboard players add @s 6H.Tick 1

# 周囲にプレイヤーがいる時、90tickに一度実行する
    execute if score @s 6H.Tick matches 90.. if entity @a[gamemode=!spectator,distance=..32] run function asset:mob/0233.honey_flyer/tick/3.motion
