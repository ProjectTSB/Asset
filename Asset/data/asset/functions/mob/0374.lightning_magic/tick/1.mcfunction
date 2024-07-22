#> asset:mob/0374.lightning_magic/tick/1
#
# Mobのtick時の処理
#
# @within function asset:mob/0374.lightning_magic/_/tick

# スコア
    scoreboard players add @s AE.Tick 1

# 空中にいるときの処理
    execute if entity @s[scores={AE.Tick=..79}] run function asset:mob/0374.lightning_magic/tick/2.in_air

# 地面にいるときの処理
    execute if entity @s[scores={AE.Tick=100..}] at @s rotated ~ 0 run function asset:mob/0374.lightning_magic/tick/3.on_ground

# 消滅
    execute if entity @s[scores={AE.Tick=80..99}] run kill @s
    execute if entity @s[scores={AE.Tick=140..}] run kill @s
