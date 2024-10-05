#> asset:object/2031.giant_pumpkin/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2031/detect_hit_block

# 判定
    execute if entity @s[scores={General.Object.Tick=64..}] run function asset:object/2031.giant_pumpkin/detect_hit_block/check

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
