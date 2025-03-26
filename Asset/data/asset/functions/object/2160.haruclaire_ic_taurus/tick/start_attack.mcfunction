#> asset:object/2160.haruclaire_ic_taurus/tick/start_attack
#
# Objectのtick時の処理
#
# @within asset:object/2160.haruclaire_ic_taurus/tick/idle

# 状態更新
    scoreboard players set @s General.Object.Tick 0
    tag @s add 2160.Attack
