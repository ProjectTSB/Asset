#> asset:mob/0341.louvert/tick/animation/4_1_meteor/meteor_summon_point_hard
#
# ハード仕様
#
# @within function asset:mob/0341.louvert/tick/animation/4_1_meteor/meteor_summon_point

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[15d,15d],[0d,0d],[15d,15d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/7.meteor

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[15d,15d],[0d,0d],[15d,15d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/7.meteor

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0