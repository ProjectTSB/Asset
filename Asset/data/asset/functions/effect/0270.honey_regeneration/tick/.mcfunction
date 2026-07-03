#> asset:effect/0270.honey_regeneration/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0270.honey_regeneration/_/tick

#> Private
# @private
    #declare score_holder $Interval

# 演出
    # execute if predicate lib:random_pass_per/40 run particle dust 1.000 0.741 0.141 1 ~ ~1.2 ~ 0.5 0.4 0.5 0 1 normal

# スコアへDurationを代入する
    execute store result score $Interval Temporary run data get storage asset:context Duration

# 20tick間隔で回復
    scoreboard players operation $Interval Temporary %= $20 Const
    execute if score $Interval Temporary matches 0 run function asset:effect/0270.honey_regeneration/tick/heal
    scoreboard players reset $Interval Temporary
