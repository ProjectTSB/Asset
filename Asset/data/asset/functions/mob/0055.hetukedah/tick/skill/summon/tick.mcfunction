#> asset:mob/0055.hetukedah/tick/skill/summon/tick
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active


# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/summon/windup

# 召喚
    execute if score @s General.Mob.Tick matches 20 anchored feet positioned ^1 ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/summon/call_26
    execute if score @s General.Mob.Tick matches 30 anchored feet positioned ^-1 ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/summon/call_64

# 自傷ダメージ
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/0055.hetukedah/tick/skill/summon/damage

# リセット
    execute if score @s General.Mob.Tick matches 60.. run function asset:mob/0055.hetukedah/tick/reset
