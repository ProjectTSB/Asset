#> asset:mob/0224.fake_pumpkin/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/224/tick

# スコア加算
    scoreboard players add @s General.Mob.Tick 1

# 演出
    particle dust 1 0.6 0 1 ~ ~1.8 ~ 0.4 0.4 0.4 0 1 normal @a
    particle dust 0.851 0 1 1 ~ ~1.8 ~ 0.4 0.4 0.4 0 1 normal @a

# 確率で笑う
    execute if predicate lib:random_pass_per/2 run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0
