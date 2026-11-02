#> asset:object/1192.satelite_drop/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1192/detect_hit_entity

# 判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0] run data modify storage asset:context IsHitEntity set value true
