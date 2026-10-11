#> asset:object/1198.blaze_barrage/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1198/detect_hit_entity

#
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run data modify storage asset:context IsHitEntity set value true
