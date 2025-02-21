#> asset:mob/0023.chainsaw_zombie/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/23/tick

# スコアを増やしていく
    execute if entity @p[gamemode=!spectator,distance=..10] run scoreboard players add @s General.Mob.Tick 1

# 突進時になんかケツアタックするのを防止する
    execute if entity @s[scores={General.Mob.Tick=102}] run tp @s ~ ~ ~ facing entity @p

# アタックする
    execute if entity @s[scores={General.Mob.Tick=100}] run function asset:mob/0023.chainsaw_zombie/tick/motion

# スコアを0にもどす
    execute if entity @s[scores={General.Mob.Tick=102}] run scoreboard players set @s General.Mob.Tick 0
