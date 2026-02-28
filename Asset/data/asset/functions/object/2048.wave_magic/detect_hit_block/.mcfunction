#> asset:object/2048.wave_magic/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2048/detect_hit_block

# 着陸前のヒット判定
    execute if entity @s[tag=!2048.OnGround] unless block ^ ^ ^0.5 #lib:no_collision_without_fluid run data modify storage asset:context IsHitBlock set value true

# 着陸後のヒット判定はtickで行う
