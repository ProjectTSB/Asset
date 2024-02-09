#> asset:mob/0341.louvert/tick/animation/14_1_falling_strike/third
#
# 三番目
#
# @within function
#   asset:mob/0341.louvert/tick/animation/14_1_falling_strike/
#   asset:mob/0341.louvert/tick/animation/15_4_final_spell_fall_strike/

# Markerを呼び出す
    execute rotated ~ 0 run tp 0-0-0-0-0 ^8 ^ ^ ~ ~
# ソウル召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/10.soul_quake

# Markerを呼び出す
    execute rotated ~ 0 run tp 0-0-0-0-0 ^-8 ^ ^ ~ ~
# ソウル召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/10.soul_quake

# Markerを呼び出す
    execute rotated ~ 0 run tp 0-0-0-0-0 ^ ^ ^8 ~ ~
# ソウル召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/10.soul_quake

# Markerを呼び出す
    execute rotated ~ 0 run tp 0-0-0-0-0 ^ ^ ^-8 ~ ~
# ソウル召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/10.soul_quake

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0