#> asset:object/2159.haruclaire_ic_capricorn/tick/start_attack
#
# Objectのtick時の処理
#
# @within asset:object/2159.haruclaire_ic_capricorn/tick/idle

# 状態更新
    scoreboard players set @s General.Object.Tick 0
    tag @s add 2159.Attack
