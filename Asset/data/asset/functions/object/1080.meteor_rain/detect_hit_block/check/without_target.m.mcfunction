#> asset:object/1080.meteor_rain/detect_hit_block/check/without_target.m
#
# @input args:
#   MovePerStep : float
# @within function asset:object/1080.meteor_rain/detect_hit_block/

# 判定
    $execute unless block ^ ^ ^$(MovePerStep) #lib:no_collision run data modify storage asset:context IsHitBlock set value true
