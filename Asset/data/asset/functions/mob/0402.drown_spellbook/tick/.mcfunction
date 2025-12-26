#> asset:mob/0402.drown_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/402/tick

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

# 時間が経過したら発射
    execute if score @s General.Mob.Tick matches 120 at @s positioned ~ ~1.5 ~ facing entity @p[tag=!PlayerShouldInvulnerable,distance=..64] eyes run function asset:mob/0402.drown_spellbook/ai/bullet/0.summon

# ランダムテレポート
    execute if predicate lib:random_pass_per/1 run function asset:mob/0402.drown_spellbook/tick/teleport
