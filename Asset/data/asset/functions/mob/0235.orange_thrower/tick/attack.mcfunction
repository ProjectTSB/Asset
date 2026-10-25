#> asset:mob/0235.orange_thrower/tick/attack
#
# みかんを召喚する攻撃
#
# @within function asset:mob/0235.orange_thrower/tick/

#> Private
# @private
    #declare score_holder $Temp

# 10tick間隔でみかんを召喚
    scoreboard players operation $Temp Temporary = @s General.Mob.Tick
    scoreboard players operation $Temp Temporary %= $10 Const
    execute if score $Temp Temporary matches 0 at @p[gamemode=!spectator,distance=..10] positioned ~ ~2.5 ~ run function asset:mob/0235.orange_thrower/tick/summon
    scoreboard players reset $Temp Temporary

# 残り個数が0ならリセット
    execute if data storage asset:context this{OrangeCount:0} run function asset:mob/0235.orange_thrower/tick/reset
