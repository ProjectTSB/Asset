#> asset:mob/0235.orange_thrower/tick/attack
#
# みかんを召喚する攻撃
#
# @within function asset:mob/0235.orange_thrower/tick/

#> Private
# @private
    #declare score_holder $Temp

# 10tick間隔で蜜柑を召喚
    scoreboard players operation $Temp Temporary = @s General.Mob.Tick
    scoreboard players operation $Temp Temporary %= $10 Const
    execute if score $Temp Temporary matches 0 run function asset:mob/0235.orange_thrower/tick/summon
    scoreboard players reset $Temp Temporary

# リセット
    execute if score @s General.Mob.Tick >= @s 6J.ResetTick run function asset:mob/0235.orange_thrower/tick/reset
