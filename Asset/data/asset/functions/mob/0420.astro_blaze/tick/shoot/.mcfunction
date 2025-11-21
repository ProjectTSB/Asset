#> asset:mob/0420.astro_blaze/tick/shoot/
#
#
#
# @within function asset:mob/0420.astro_blaze/tick/

#> Private
# @private
    #declare score_holder $Interval

# 発射
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0420.astro_blaze/tick/shoot/spread
    scoreboard players reset $Interval Temporary

# 弾数が0ならスコア初期化
    execute if data storage asset:context this{Bullet:0} run scoreboard players set @s General.Mob.Tick 0
