#> asset:mob/0046.clock_of_despair/tick/skill/7_oclock
#
# 金歯車 + 銀歯車 -> 銀歯車 -> 銀歯車
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# RE: 歯車の恐怖
    execute if score @s 1A.LifeTime matches 1400 run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_golden_gears/4
    execute if score @s 1A.LifeTime matches 1400 run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_silver_gears/5
    # execute if score @s 1A.LifeTime matches 1430 run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_silver_gears/
    execute if score @s 1A.LifeTime matches 1460 run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_silver_gears/8
