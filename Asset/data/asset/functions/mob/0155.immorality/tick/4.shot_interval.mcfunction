#> asset:mob/0155.immorality/tick/4.shot_interval
#
# 定期的に発射する
#
# @within function asset:mob/0155.immorality/tick/2.tick

#> Private
# @private
    #declare score_holder $Interval

# 2tick間隔で実行する
    scoreboard players operation $Interval Temporary = @s 4B.ShotTime
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0155.immorality/tick/5.shot
    scoreboard players reset $Interval Temporary