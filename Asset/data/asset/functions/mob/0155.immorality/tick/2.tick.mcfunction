#> asset:mob/0155.immorality/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0155.immorality/tick/1.trigger

# スコアを増やす
    scoreboard players add @s 4B.ShotTime 1

# 発砲準備で位置と向きを固定
    execute if entity @s[scores={4B.ShotTime=0}] run function asset:mob/0155.immorality/tick/3.ready

# 発砲
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=20..}] anchored eyes positioned ^-0.3 ^ ^1 run function asset:mob/0155.immorality/tick/4.shot_interval

# リセット
# ノーマル以下なら早めに終わる
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={4B.ShotTime=36..}] run function asset:mob/0155.immorality/tick/8.reset
    execute if entity @s[scores={4B.ShotTime=48..}] run function asset:mob/0155.immorality/tick/8.reset