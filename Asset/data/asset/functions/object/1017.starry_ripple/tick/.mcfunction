#> asset:object/1017.starry_ripple/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1017/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 一定の値になるまで演出と落下
    execute if entity @s[scores={General.Object.Tick=1..12}] run particle electric_spark ~ ~ ~ 0 0 0 0 1
    execute if entity @s[scores={General.Object.Tick=1..8}] run playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 0.1 1 0
    execute if entity @s[scores={General.Object.Tick=1..12}] run tp @s ~ ~-0.25 ~

# ダメージと演出
    execute if entity @s[scores={General.Object.Tick=12..}] run function asset:object/1017.starry_ripple/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=12..}]
