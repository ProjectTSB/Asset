#> asset:mob/0084.falcios_priest/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/84/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# ノーマル以下ならスキルをランダムにする
# ハード以上の場合は両方実行する(2.shootで回復も実行される
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={General.Mob.Tick=0}] positioned ^ ^ ^16 if entity @p[distance=..16] run tag @s add 2C.Attack
    execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[scores={General.Mob.Tick=0}] run tag @s add 2C.Attack

# 魔法を発射
    execute if entity @s[tag=2C.Attack,scores={General.Mob.Tick=0..}] run function asset:mob/0084.falcios_priest/tick/shoot

# 回復
    execute if entity @s[tag=!2C.Attack,scores={General.Mob.Tick=0..}] run function asset:mob/0084.falcios_priest/tick/heal
