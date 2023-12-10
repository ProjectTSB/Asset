#> asset:mob/0341.louvert/tick/animation/4_1_meteor/meteor_summon_point
#
# メテオを召喚する地点を決める
#
# @within function asset:mob/0341.louvert/tick/animation/4_1_meteor/

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[10d,10d],[0d,0d],[10d,10d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/animation/4_1_meteor/meteor_summon

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# ハードなら更に
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0341.louvert/tick/animation/4_1_meteor/meteor_summon_point_hard