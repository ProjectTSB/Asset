#> asset:object/2049.lightning_magic/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2049/detect_hit_block

# 地面に着く前
    execute if entity @s[tag=!2049.OnGround] unless block ~ ~-0.5 ~ #lib:no_collision/without_fluid run data modify storage asset:context IsHitBlock set value true

# 地面に着いた後
# 雷雲が阻まれない限り消滅しない
    execute if entity @s[tag=2049.OnGround] positioned ~ ~3 ~ unless block ^ ^ ^0.15 #lib:no_collision/without_fluid run data modify storage asset:context IsHitBlock set value true
