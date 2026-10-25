#> asset:object/2047.prominence_magic/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2047/detect_hit_block

# 着陸前のみ判定
    execute if entity @s[scores={General.Object.Tick=..79}] unless block ^ ^ ^0.5 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
