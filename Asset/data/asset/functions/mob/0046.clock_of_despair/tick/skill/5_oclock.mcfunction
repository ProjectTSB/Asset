#> asset:mob/0046.clock_of_despair/tick/skill/5_oclock
#
# 乱発雷
#
# @within function asset:mob/0046.clock_of_despair/tick/skill_active

# 超ランダムで雷 その1 (1060Tickに攻撃)
    execute if score @s 1A.LifeTime matches 1010..1045 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/spread_summon/with_calc_delay.m {ThunderTick:1060}

# 超ランダムで雷 その2 (1120Tickに攻撃)
    execute if score @s 1A.LifeTime matches 1070..1105 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/spread_summon/with_calc_delay.m {ThunderTick:1120}

# 超ランダムで雷 その3 (1180Tickに攻撃)
    execute if score @s 1A.LifeTime matches 1130..1165 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/spread_summon/with_calc_delay.m {ThunderTick:1180}
