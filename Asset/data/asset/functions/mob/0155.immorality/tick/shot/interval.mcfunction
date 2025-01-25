#> asset:mob/0155.immorality/tick/shot/interval
#
# 定期的に発射する
#
# @within function asset:mob/0155.immorality/tick/

#> Private
# @private
    #declare score_holder $Interval

# 2tick間隔で実行する
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0155.immorality/tick/shot/shoot
    scoreboard players reset $Interval Temporary
