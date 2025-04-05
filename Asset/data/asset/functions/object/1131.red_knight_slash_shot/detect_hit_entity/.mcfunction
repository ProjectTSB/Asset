#> asset:object/1131.red_knight_slash_shot/detect_hit_entity/
#
#
#
# @within function asset:object/alias/1131/detect_hit_entity

# 判定
    execute positioned ~-1 ~-1 ~-1 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0.75,dy=0.75,dz=0.75] run data modify storage asset:context IsHitEntity set value true
