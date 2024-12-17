#> asset:effect/0616.lightning_curse/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0616.lightning_curse/_/tick

#> Private
# @private
    #declare score_holder $Interval

# 演出
    execute if predicate lib:random_pass_per/60 run particle dust 1 1 0 1 ~ ~1.2 ~ 0.4 0.2 0.4 0 1 normal @a

# スコアへDurationを代入する
    execute store result score $Interval Temporary run data get storage asset:context Duration

# 20tick間隔で演出
    scoreboard players operation $Interval Temporary %= $20 Const
    execute if score $Interval Temporary matches 0 positioned ~ ~1.2 ~ run function asset:effect/0616.lightning_curse/tick/damage
    scoreboard players reset $Interval Temporary
