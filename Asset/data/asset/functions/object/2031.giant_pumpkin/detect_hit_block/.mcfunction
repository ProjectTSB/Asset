#> asset:object/2031.giant_pumpkin/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2031/detect_hit_block

# 判定
    execute if entity @s[tag=2031.HighSpeedSpinning] run function asset:object/2031.giant_pumpkin/detect_hit_block/check
