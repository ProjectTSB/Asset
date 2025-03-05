#> asset:object/1080.meteor_rain/detect_hit_block/check_target.m
#
#
#
# @within function asset:object/1080.meteor_rain/detect_hit_block/

# 判定
    $execute positioned ~-50 ~-1 ~-50 unless entity @e[type=#lib:living,scores={MobUUID=$(TargetID)},dx=99,dy=-50,dz=99] at @s unless block ^ ^ ^$(MovePerStep) #lib:no_collision run data modify storage asset:context IsHitBlock set value true
    #execute positioned ~-50 ~ ~-50 unless entity @e[type=#lib:living,scores={MobUUID=16708},dx=99,dy=-50,dz=99] at @s unless block ~ ~ ~ #lib:no_collision run data modify storage asset:context IsHitBlock set value true
