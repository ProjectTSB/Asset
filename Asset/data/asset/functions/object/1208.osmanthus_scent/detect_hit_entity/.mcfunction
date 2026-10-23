#> asset:object/1208.osmanthus_scent/detect_hit_entity/
#
# 敵との接触を判定する
#
# @within asset:object/alias/1208/detect_hit_entity

# 判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run data modify storage asset:context IsHitEntity set value true
