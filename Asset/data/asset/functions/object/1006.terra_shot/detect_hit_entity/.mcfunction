#> asset:object/1006.terra_shot/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1006/detect_hit_entity

# 判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0] run data modify storage asset:context IsHitEntity set value true
