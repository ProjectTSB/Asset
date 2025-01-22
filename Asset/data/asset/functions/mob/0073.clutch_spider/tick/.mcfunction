#> asset:mob/0073.clutch_spider/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/73/tick

# スコアを増やす
    execute positioned ^ ^ ^10 if entity @p[distance=..10] run scoreboard players add @s General.Mob.Tick 1

# 発動
    execute if score @s General.Mob.Tick matches 80.. if entity @a[distance=..30] positioned ~ ~0.5 ~ run function asset:mob/0073.clutch_spider/tick/2.1.skill
