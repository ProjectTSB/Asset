#> asset:mob/0056.thunder_trifler/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0056.thunder_trifler/_/hurt

# 演出
   particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.4 0
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 0.9 0

# ノーマルなら50%でテレポート、ハードなら常時
    execute if predicate api:global_vars/difficulty/max/normal if predicate lib:random_pass_per/50 run function asset:mob/0056.thunder_trifler/hurt/teleport
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0056.thunder_trifler/hurt/teleport