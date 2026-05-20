#> asset:object/2080.aurora_missile/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2080/detect_hit_block

# 判定
    execute if entity @s[tag=!2080.Enhanced] unless block ^ ^ ^0.5 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute if entity @s[tag=2080.Enhanced] unless block ^ ^ ^0.7 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
