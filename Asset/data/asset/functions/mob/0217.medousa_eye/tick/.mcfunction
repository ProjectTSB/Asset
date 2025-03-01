#> asset:mob/0217.medousa_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/217/tick

# 演出
    particle dust 0.294 0.353 0.043 1.5 ^ ^1.7 ^-0.3 0.2 0.2 0.2 0 1 normal @a

# スコア管理
    execute if entity @s[scores={General.Mob.Tick=0..}] run scoreboard players add @s General.Mob.Tick 1
    execute unless entity @s[scores={General.Mob.Tick=0..}] positioned ^ ^ ^10 if entity @p[gamemode=!spectator,distance=..10] at @s run scoreboard players add @s General.Mob.Tick 1

# 向きを固定する
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0217.medousa_eye/tick/fix_direction

# 予備動作
    execute if entity @s[scores={General.Mob.Tick=1}] positioned ^ ^1.8 ^0.4 run function asset:mob/0217.medousa_eye/tick/vfx
    execute if entity @s[scores={General.Mob.Tick=1..19}] run function asset:mob/0217.medousa_eye/tick/announce/

# 石化ビーム発射
    execute if entity @s[scores={General.Mob.Tick=20..}] run function asset:mob/0217.medousa_eye/tick/beam/
