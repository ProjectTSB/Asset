#> asset:mob/0365.frestchika_v2/ai/animation/1_1_tackle_move/move
#
# 突進 分岐
#
# @within function asset:mob/0365.frestchika_v2/ai/animation/1_1_tackle_move/

# 自身を前進させる
    execute positioned ^ ^ ^1 run function asset:mob/0365.frestchika_v2/ai/general/1.teleport

# 前進した先にプレイヤーがいたらスコアを飛ばす
    execute at @s if entity @p[tag=!PlayerShouldInvulnerable,distance=..1.5] run scoreboard players set @s A5.AnimationNum 12
    execute at @s if entity @p[tag=!PlayerShouldInvulnerable,distance=..1.5] run scoreboard players set @s A5.AnimationTick 0