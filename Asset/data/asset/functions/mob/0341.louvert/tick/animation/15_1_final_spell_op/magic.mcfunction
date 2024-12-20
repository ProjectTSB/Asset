#> asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/magic
#
# 火炎陣配置
#
# @within function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/

# Markerを呼び出す
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run tp 0-0-0-0-0 ^3 ^ ^-3 ~ ~
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/6.fire_magic
# Markerを呼び出す
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run tp 0-0-0-0-0 ^-3 ^ ^3 ~ ~
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/6.fire_magic
# Markerを呼び出す
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run tp 0-0-0-0-0 ^3 ^ ^3 ~ ~
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/6.fire_magic
# Markerを呼び出す
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run tp 0-0-0-0-0 ^-3 ^ ^-3 ~ ~
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/6.fire_magic
# Markerを呼び出す
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run tp 0-0-0-0-0 ^10 ^ ^ ~ ~
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/6.fire_magic
# Markerを呼び出す
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run tp 0-0-0-0-0 ^ ^ ^10 ~ ~
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/6.fire_magic
# Markerを呼び出す
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run tp 0-0-0-0-0 ^-10 ^ ^ ~ ~
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/6.fire_magic
# Markerを呼び出す
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run tp 0-0-0-0-0 ^ ^ ^-10 ~ ~
# メテオ召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/6.fire_magic
# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0