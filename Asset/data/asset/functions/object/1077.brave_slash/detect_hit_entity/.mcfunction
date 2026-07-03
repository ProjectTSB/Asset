#> asset:object/1077.brave_slash/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1077/detect_hit_entity

# 判定
    execute positioned ~-0.75 ~-0.75 ~-0.75 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5] run data modify storage asset:context IsHitEntity set value true
