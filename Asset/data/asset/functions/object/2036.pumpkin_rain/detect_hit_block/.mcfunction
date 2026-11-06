#> asset:object/2036.pumpkin_rain/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2036/detect_hit_block

# 判定
    execute if entity @s[tag=!2036.OnGround] unless block ~ ~-1 ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
