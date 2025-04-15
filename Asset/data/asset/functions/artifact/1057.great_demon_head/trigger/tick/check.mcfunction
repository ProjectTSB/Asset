#> asset:artifact/1057.great_demon_head/trigger/tick/check
#
#
#
# @within function asset:artifact/1057.great_demon_head/trigger/tick/

#> val
# @private
    #declare score_holder $TD.Temp

# ゲーム内時間を参照
    execute store result score $TD.Temp Temporary run time query gametime
    scoreboard players operation $TD.Temp Temporary %= $40 Const
    execute if score $TD.Temp Temporary matches 0 run function asset:artifact/1057.great_demon_head/trigger/tick/heal
    scoreboard players reset $TD.Temp Temporary
