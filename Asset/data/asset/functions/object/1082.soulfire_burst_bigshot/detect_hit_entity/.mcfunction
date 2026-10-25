#> asset:object/1082.soulfire_burst_bigshot/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1082/detect_hit_entity

execute positioned ~-1 ~-1 ~-1 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=1,dy=1,dz=1] run data modify storage asset:context IsHitEntity set value true
