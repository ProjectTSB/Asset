#> asset:object/1091.flame_boomerang/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1091/detect_hit_block

# 判定
    execute on passengers at @s unless block ^ ^ ^0.75 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
