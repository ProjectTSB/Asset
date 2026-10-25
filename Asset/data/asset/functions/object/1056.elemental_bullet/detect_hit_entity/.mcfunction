#> asset:object/1056.elemental_bullet/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1056/detect_hit_entity

# ヒット判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run data modify storage asset:context IsHitEntity set value true
