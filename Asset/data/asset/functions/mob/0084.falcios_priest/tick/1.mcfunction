#> asset:mob/0084.falcios_priest/tick/1
#
# Mobのtick時の処理
#
# @within function asset:mob/0084.falcios_priest/_/tick

# スコア
    scoreboard players add @s 2C.Tick 1

# 技選択
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={2C.Tick=0}] positioned ^ ^ ^16 if entity @p[distance=..16] if predicate lib:random_pass_per/80 run tag @s add 2C.AttackSkill

# 回復
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[tag=!2C.AttackSkill,scores={2C.Tick=0}] run function asset:mob/0084.falcios_priest/tick/2.heal

# 弾を発射
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[tag=2C.AttackSkill,scores={2C.Tick=0..}] run function asset:mob/0084.falcios_priest/tick/3.shoot

# ハード以上の場合二つのスキルを同時に使う
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[scores={2C.Tick=0}] run function asset:mob/0084.falcios_priest/tick/2.heal
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[scores={2C.Tick=0..}] run function asset:mob/0084.falcios_priest/tick/3.shoot
