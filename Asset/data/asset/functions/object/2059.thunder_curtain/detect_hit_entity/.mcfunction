#> asset:object/2059.thunder_curtain/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2059/detect_hit_entity

# IntervalTagがあるときのみ判定
    execute if entity @s[tag=2059.Interval] if entity @p[distance=..15] run function asset:object/2059.thunder_curtain/detect_hit_entity/check
