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
    execute if entity @s[scores={AA.Tick=100..}] rotated ~ 0 positioned ~ ~0.2 ~ run function asset:mob/0370.prominence_magic/tick/3.on_ground

# 消滅
    execute if entity @s[scores={AA.Tick=80..99}] run kill @s
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={AA.Tick=150..}] run kill @s
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[scores={AA.Tick=150..}] run kill @s
