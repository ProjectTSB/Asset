#> asset:object/2037.defeated_pumpkin/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within function asset:object/alias/2037/detect_hit_block

# 判定
    #execute if entity @s[tag=!2037.FirstLevitation] at @s unless block ~ ~-0.5 ~ #lib:no_collision run data modify storage asset:context IsHitBlock set value true

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
