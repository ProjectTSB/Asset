#> asset:object/2202.circle_announce_follow/tick/move.m
#
# 
#
# @within function asset:object/2202.circle_announce_follow/tick/

# 対象のプレイヤー足元へ移動、地面とZ-Fightingしないようにちょっと浮かす
    $execute positioned as @p[scores={UserID=$(PlayerID)}] positioned ~ ~0.01 ~ run tp @s ~ ~ ~ ~ ~
        #$execute positioned @p[scores={UserID=$(PlayerID)}] positioned ~ ~0.01 ~ run say 1
