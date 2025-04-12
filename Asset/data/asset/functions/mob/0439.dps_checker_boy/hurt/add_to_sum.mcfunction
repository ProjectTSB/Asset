#> asset:mob/0439.dps_checker_boy/hurt/add_to_sum
#
#
#
# @within function asset:mob/0439.dps_checker_boy/hurt/

#> Private
# @private
    #declare score_holder $Sum
    #declare score_holder $Damage

execute store result score $Sum Temporary run data get storage asset:context this.Sum
execute store result score $Damage Temporary run data get storage asset:context Hurt.Amount 100

scoreboard players operation $Sum Temporary += $Damage Temporary

execute store result storage asset:context this.Sum int 1 run scoreboard players get $Sum Temporary

scoreboard players reset $Sum Temporary
scoreboard players reset $Damage Temporary
