#> asset:mob/0189.water_mage/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/189/tick

# パーティクル
    particle minecraft:falling_dust blue_wool ~ ~1 ~ 0.1 0 0.1 0 1

# スコア
    execute positioned ^ ^ ^10 if entity @p[gamemode=!spectator,distance=..10] run scoreboard players add @s General.Mob.Tick 1

# 水魔法を召喚
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0189.water_mage/tick/summon
