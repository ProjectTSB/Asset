#> asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.4.get_mp_heal
#
# 
#
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/3.main

#> culc
# @private
    #declare score_holder $MS.Coefficient

# 係数計算
    scoreboard players set $MS.Coefficient Temporary 5 
    scoreboard players operation $MS.Coefficient Temporary *= $MS.AttackLevel Temporary
    scoreboard players add $MS.Coefficient Temporary 100

# 回復量計算
    execute store result score $MS.MPHeal Temporary run data get storage api: PersistentArgument.AdditionalMPHeal 1
    execute store result storage asset:temp Data.MPHeal int 0.01 run scoreboard players operation $MS.MPHeal Temporary *= $MS.Coefficient Temporary

# reset
    scoreboard players reset $MS.Coefficient Temporary
