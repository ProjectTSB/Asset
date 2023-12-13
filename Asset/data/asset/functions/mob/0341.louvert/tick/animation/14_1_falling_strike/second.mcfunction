#> asset:mob/0341.louvert/tick/animation/14_1_falling_strike/second
#
# 二番目
#
# @within function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/

# Markerを呼び出す
    execute rotated ~ 0 run tp 0-0-0-0-0 ^5 ^ ^ ~ ~
# ボム召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/10.soul_quake

# Markerを呼び出す
    execute rotated ~ 0 run tp 0-0-0-0-0 ^-5 ^ ^ ~ ~
# ボム召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/10.soul_quake

# Markerを呼び出す
    execute rotated ~ 0 run tp 0-0-0-0-0 ^ ^ ^5 ~ ~
# ボム召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/10.soul_quake

# Markerを呼び出す
    execute rotated ~ 0 run tp 0-0-0-0-0 ^ ^ ^-5 ~ ~
# ボム召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/10.soul_quake

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0