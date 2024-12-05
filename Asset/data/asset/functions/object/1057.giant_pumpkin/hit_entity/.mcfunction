#> asset:object/1057.giant_pumpkin/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1057/hit_entity

# 回転し始め
    execute if entity @s[tag=2031.BeginningSpin] run function asset:object/1057.giant_pumpkin/hit_entity/beginning_hit

# 高速回転状態
    execute if entity @s[tag=2031.HighSpeedSpinning] run function asset:object/1057.giant_pumpkin/hit_entity/high_speed_hit
