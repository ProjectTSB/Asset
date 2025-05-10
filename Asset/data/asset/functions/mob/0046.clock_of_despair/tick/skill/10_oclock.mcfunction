#> asset:mob/0046.clock_of_despair/tick/skill/10_oclock
#
# 金歯車 + 銀歯車 -> 銀歯車 -> 銀歯車 + 自機狙い雷
#
# @within function asset:mob/0046.clock_of_despair/tick/skill_active

# RE:RE: 歯車の恐怖
    execute if score @s 1A.LifeTime matches 2000 run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/5-4
    execute if score @s 1A.LifeTime matches 2030 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/8-0
    execute if score @s 1A.LifeTime matches 2060 run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/8-0

# サンダー召喚
    execute if score @s 1A.LifeTime matches 2080 if predicate api:global_vars/difficulty/min/normal at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:40}
# サンダー攻撃
    # execute if score @s 1A.LifeTime matches 2120 if predicate api:global_vars/difficulty/min/normal at @e[type=marker,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage
