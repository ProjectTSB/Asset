#> asset:mob/0370.wave_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/370/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# 移動
# プレイヤーが近くにいれば直進、いなければ誘導
    execute if entity @p[gamemode=!spectator,distance=..6] run tp @s ^ ^ ^0.2
    execute unless entity @p[gamemode=!spectator,distance=..6] facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 攻撃
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0370.wave_spellbook/tick/ready
