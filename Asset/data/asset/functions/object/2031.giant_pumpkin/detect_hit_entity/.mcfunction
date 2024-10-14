#> asset:object/2031.giant_pumpkin/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2031/detect_hit_entity

# 高速回転状態でのみ判定を行う
    execute if entity @s[tag=2031.HighSpeedSpinning] if entity @p[distance=..5] run function asset:object/2031.giant_pumpkin/detect_hit_entity/high_speed_spinning

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
