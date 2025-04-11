#> asset:object/2161.haruclaire_ic_pisces/tick/start_attack
#
# Objectのtick時の処理
#
# @within asset:object/2161.haruclaire_ic_pisces/tick/idle

# 状態更新
    scoreboard players set @s General.Object.Tick 0
    tag @s add 2161.Attack
