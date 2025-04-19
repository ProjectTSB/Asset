#> asset:object/1136.thor_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1136/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# ダメージ
    execute if score @s General.Object.Tick matches 10 run function asset:object/1136.thor_thunder/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=10..}]
