#> asset:object/1158.ouroboros_ball/hit_entity/reset
#
# return用リセット処理
#
# @within function asset:object/1158.ouroboros_ball/hit_entity/

# リセット
    scoreboard players reset $HitEnemyID Temporary
    tag @e[type=#lib:living_without_player,distance=..5] remove 13S.HitEnemy
