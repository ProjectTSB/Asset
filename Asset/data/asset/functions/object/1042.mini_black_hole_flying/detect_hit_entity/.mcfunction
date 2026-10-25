#> asset:object/1042.mini_black_hole_flying/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1042/detect_hit_entity

# 判定
   execute positioned ~-1 ~-1 ~-1 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=1,dy=1,dz=1,limit=1] run data modify storage asset:context IsHitEntity set value true
