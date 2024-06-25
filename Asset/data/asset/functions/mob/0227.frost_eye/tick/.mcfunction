#> asset:mob/0227.frost_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0227.frost_eye/_/tick

# 演出
    execute anchored eyes positioned ^ ^ ^-0.5 run particle snowflake ~ ~ ~ 0.2 0.2 0.2 0 1 normal @a

# 接地で上を向く
    execute unless block ~ ~0.4 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~2.5 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# プレイヤーを追跡
    execute facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={6C.AttackCT=1..}] 6C.AttackCT 1

# クールタイム中じゃないなら接触時に攻撃
    execute unless entity @s[scores={6C.AttackCT=1..}] anchored eyes positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0] as @p[tag=!PlayerShouldInvulnerable,dx=0] at @s run function asset:mob/0227.frost_eye/tick/attack

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.3 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
