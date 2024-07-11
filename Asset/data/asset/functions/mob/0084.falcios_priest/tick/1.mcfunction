#> asset:mob/0084.falcios_priest/tick/1
#
# Mobのtick時の処理
#
# @within function asset:mob/0084.falcios_priest/_/tick

# スコア
    scoreboard players add @s 2C.Tick 1

# ノーマル以下ならスキルをランダムにする
# ハード以上の場合は2.shootのみが実行される
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={2C.Tick=0}] positioned ^ ^ ^16 unless entity @p[distance=..16] if predicate lib:random_pass_per/80 run tag @s add 2C.Heal

# 弾を発射
    execute if entity @s[tag=!2C.Heal,scores={2C.Tick=0..}] run function asset:mob/0084.falcios_priest/tick/2.shoot

# 回復
    execute if entity @s[tag=2C.Heal,scores={2C.Tick=0..}] run function asset:mob/0084.falcios_priest/tick/3.heal
