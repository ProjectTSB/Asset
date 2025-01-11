#> asset:mob/0190.thunder_mage/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/190/tick

# パーティクル
    particle minecraft:falling_dust yellow_terracotta ~ ~1 ~ 0.1 0 0.1 0 1

# スコアを増やす
    scoreboard players add @s General.Mob.Tick 1

# 発動
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0190.thunder_mage/tick/attack
