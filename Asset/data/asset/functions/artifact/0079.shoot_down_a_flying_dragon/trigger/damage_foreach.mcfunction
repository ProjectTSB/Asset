#> asset:artifact/0079.shoot_down_a_flying_dragon/trigger/damage_foreach
# @within function asset:artifact/0079.shoot_down_a_flying_dragon/trigger/3.main

#> temp
# @private
    #declare score_holder $25.TempDmg

execute if entity @s[type=player] store result score $25.TempDmg Temporary run data get storage api: Argument.Damage 100
execute if entity @s[type=player] store result storage api: Argument.Damage double 0.0015 run data get storage api: Argument.Damage 100
function api:damage/
execute if entity @s[type=player] store result storage api: Argument.Damage double 0.0100 run scoreboard players get $25.TempDmg Temporary
scoreboard players reset $25.TempDmg
