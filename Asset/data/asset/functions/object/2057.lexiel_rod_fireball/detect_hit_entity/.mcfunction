#> asset:object/2057.lexiel_rod_fireball/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2057/detect_hit_entity

# 判定
    execute if entity @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,dx=0] run data modify storage asset:context IsHitEntity set value true
