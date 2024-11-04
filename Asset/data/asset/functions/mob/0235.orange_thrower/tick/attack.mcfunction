#> asset:mob/0235.orange_thrower/tick/attack
#
# みかんを召喚する攻撃
#
# @within function asset:mob/0235.orange_thrower/tick/

#> Private
# @private
    #declare score_holder $Temp

# 5tick間隔で蜜柑を召喚
    scoreboard players operation $Temp Temporary = @s General.Mob.Tick
    scoreboard players operation $Temp Temporary %= $10 Const
    execute if score $Temp Temporary matches 0 run function asset:mob/0235.orange_thrower/tick/summon
    scoreboard players reset $Temp Temporary

# リセット
    execute if entity @s[scores={General.Mob.Tick=30..}] run scoreboard players set @s General.Mob.Tick -50
