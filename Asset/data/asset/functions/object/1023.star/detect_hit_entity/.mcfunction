#> asset:object/1023.star/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1023/detect_hit_entity

# 判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run data modify storage asset:context IsHitEntity set value true
