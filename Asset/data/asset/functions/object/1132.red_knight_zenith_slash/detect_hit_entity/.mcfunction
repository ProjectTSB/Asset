#> asset:object/1132.red_knight_zenith_slash/detect_hit_entity/
#
#
#
# @within function asset:object/alias/1132/detect_hit_entity

# ヒット判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run data modify storage asset:context IsHitEntity set value true
