#> asset:object/2031.giant_pumpkin/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2031/hit_entity

# 回転し始め
    execute if entity @s[tag=2031.BeginningSpin] run function asset:object/2031.giant_pumpkin/hit_entity/beginning_hit

# 高速回転
    execute if entity @s[tag=2031.HighSpeedSpinning] run function asset:object/call.m {method:kill}

# DXYZ タグを削除
    tag @a[tag=DXYZ,distance=..5] remove DXYZ
