#> asset:mob/0370.prominence_magic/tick/1
#
# Mobのtick時の処理
#
# @within function asset:mob/0370.prominence_magic/_/tick

# スコア
    scoreboard players add @s AA.Tick 1

# 空中にいるときの処理
    execute if entity @s[scores={AA.Tick=..79}] run function asset:mob/0370.prominence_magic/tick/2.in_air

# 地面にいるときの処理
    execute if entity @s[scores={AA.Tick=100..}] at @s rotated ~ 0 run function asset:mob/0370.prominence_magic/tick/3.on_ground

# 消滅
    execute if entity @s[scores={AA.Tick=80..99}] run kill @s
    execute if entity @s[scores={AA.Tick=130..}] run kill @s
