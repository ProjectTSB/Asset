#> asset:mob/0046.clock_of_despair/tick/skill/1_oclock
#
# 銀歯車 -> 銀歯車 -> 銀歯車
#
# @within function asset:mob/0046.clock_of_despair/tick/skill_active

# 歯車の洗礼
    execute if score @s 1A.LifeTime matches 200 run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/8-0
    execute if score @s 1A.LifeTime matches 230 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/8-0
    execute if score @s 1A.LifeTime matches 260 run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/8-0
