#> asset:object/1040.thelema_persuit_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1040/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if entity @s[scores={General.Object.Tick=..5}] run particle dust 1 1 100000000 1 ~ ~0.3 ~ 0 0 0 0 1 normal @a
    execute if entity @s[scores={General.Object.Tick=..10}] run particle dust 1 1 100000000 1 ~ ~0.5 ~ 0 0 0 0 1 normal @a

# 少し上昇する
    execute if entity @s[scores={General.Object.Tick=..5}] run tp @s ~ ~0.1 ~

# 落ちる
    execute if entity @s[scores={General.Object.Tick=15..}] run function asset:object/1040.thelema_persuit_sword/tick/recursive
    scoreboard players reset $Count Temporary

# 消滅
    execute if entity @s[scores={General.Object.Tick=25..}] run function asset:object/1040.thelema_persuit_sword/tick/hit

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
