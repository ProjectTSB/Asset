#> asset:object/1009.arrow/detect_hit_entity/from_player
#
#
#
# @within function asset:object/1009.arrow/detect_hit_entity/

execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0] run data modify storage asset:context IsHitEntity set value true
