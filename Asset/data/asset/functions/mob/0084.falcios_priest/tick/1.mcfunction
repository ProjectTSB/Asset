#> asset:mob/0084.falcios_priest/tick/1
#
# Mobのtick時の処理
#
# @within function asset:mob/0084.falcios_priest/_/tick

# スコア
    scoreboard players add @s 2C.Tick 1

# 技選択
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={2C.Tick=0}] run function asset:mob/0084.falcios_priest/tick/2.select_skill

# 回復
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={2C.Skill=0}] run function asset:mob/0084.falcios_priest/tick/3.heal

# 弾を発射
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={2C.Skill=1}] run function asset:mob/0084.falcios_priest/tick/4.shoot

# ハード以上の場合二つのスキルを同時に使う
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[scores={2C.Tick=0}] run function asset:mob/0084.falcios_priest/tick/3.heal
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[scores={2C.Tick=0..}] run function asset:mob/0084.falcios_priest/tick/4.shoot
