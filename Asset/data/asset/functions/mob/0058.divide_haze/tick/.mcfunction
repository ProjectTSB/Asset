#> asset:mob/0058.divide_haze/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/58/tick

# 演出
    particle dust 0 0.2 0.1 1 ~ ~1 ~ 0.5 0.3 0.5 1 6 normal @a[distance=..16]

# 周囲のプレイヤーにウィザー
    effect give @a[gamemode=!spectator,distance=..1.2] wither 1 2 false

# 増殖スコア
    scoreboard players add @s General.Mob.Tick 1

# 増殖
    execute if score @s General.Mob.Tick matches 200.. run function asset:mob/0058.divide_haze/tick/mob_count
