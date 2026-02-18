#> asset:mob/0400.explosion_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/400/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# カベにぶつかった際の処理
    execute at @s unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

# 範囲内ならホーミングじみた移動
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..64] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# スコア増やす
    scoreboard players add @s General.Mob.Tick 1

# プレイヤーが近くにいたら爆発
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/0400.explosion_spellbook/ai/explode/

# 時間が経過したら爆発
    execute if score @s General.Mob.Tick matches 500 run function asset:mob/0400.explosion_spellbook/ai/explode/
