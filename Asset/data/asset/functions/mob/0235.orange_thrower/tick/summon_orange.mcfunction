#> asset:mob/0235.orange_thrower/tick/summon_orange
#
# みかんを召喚する
#
# @within function asset:mob/0235.orange_thrower/tick/

#> Private
# @private
    #declare score_holder $Temp

# 5tick間隔で蜜柑を召喚
    scoreboard players operation $Temp Temporary = @s General.Mob.Tick
    scoreboard players operation $Temp Temporary %= $10 Const
    execute if score $Temp Temporary matches 0 run data modify storage api: Argument.ID set value 2079
    execute if score $Temp Temporary matches 0 at @p[distance=..10] positioned ~ ~2.5 ~ run function api:object/summon
    scoreboard players reset $Temp Temporary

# リセット
    execute if entity @s[scores={General.Mob.Tick=30..}] run scoreboard players set @s General.Mob.Tick -50
