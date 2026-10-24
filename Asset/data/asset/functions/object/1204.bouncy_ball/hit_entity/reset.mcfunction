#> asset:object/1204.bouncy_ball/hit_entity/reset
#
# 
#
# @within function asset:object/1204.bouncy_ball/hit_entity/

# リセット
    scoreboard players reset $HitEnemyID Temporary
    tag @e[type=#lib:living_without_player,distance=..5] remove 1AI.HitEnemy
