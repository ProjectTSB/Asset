#> asset:object/1064.fire_of_rebirth/detect_hit_entity/
#
# 指定した条件を満たすとヒット時の処理を実行する
#
# @within asset:object/alias/1064/detect_hit_entity

# 判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] run data modify storage asset:context IsHitEntity set value true
