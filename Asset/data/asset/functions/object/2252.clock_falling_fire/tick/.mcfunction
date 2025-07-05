#> asset:object/2252.clock_falling_fire/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2252/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if score @s General.Object.Tick matches 1..11 run function asset:object/2252.clock_falling_fire/tick/fire

# 消滅処理
    kill @s[scores={General.Object.Tick=11..}]
