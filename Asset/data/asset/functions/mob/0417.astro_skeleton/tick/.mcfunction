#> asset:mob/0417.astro_skeleton/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/417/tick

# スコアを増やす
    scoreboard players add @s General.Mob.Tick 1

# 300Tick時にテレポート
    execute if score @s General.Mob.Tick matches 300.. run function asset:mob/0417.astro_skeleton/tick/teleport
