#> asset:mob/0104.mad_scientist/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/104/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 投げる予告音
    execute if score @s General.Mob.Tick matches 0 run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 1.5

# ポーションを投げる(Projectile使用)
    execute if score @s General.Mob.Tick matches 20.. run function asset:mob/0104.mad_scientist/tick/throw_potion
