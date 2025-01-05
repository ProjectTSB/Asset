#> asset:mob/0055.hetukedah/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/55/tick

# 移動
    #execute facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# 冒頭の動作
    execute if score @s[tag=!1J.InAction] General.Mob.Tick matches -30 run function asset:mob/0055.hetukedah/tick/title

# スコア付与
    scoreboard players add @s General.Mob.Tick 1

# スキル発動
    execute if score @s[tag=!1J.InAction] General.Mob.Tick matches 60 run function asset:mob/0055.hetukedah/tick/skill_select

# スキルアクティブ
    execute if entity @s[tag=1J.InAction] run function asset:mob/0055.hetukedah/tick/skill_active

# 演出
    execute positioned ~ ~1 ~ run particle minecraft:dust 1 0 1 0.5 ^ ^ ^ 0.15 0.15 0.15 0 30 force @a[distance=..30]
    execute positioned ~ ~1 ~ run particle minecraft:dust 0.5 0 0.5 0.5 ^ ^ ^ 0.08 0.08 0.08 0 10 force @a[distance=..30]
