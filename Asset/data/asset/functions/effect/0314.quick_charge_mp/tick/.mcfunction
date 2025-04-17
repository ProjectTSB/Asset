#> asset:effect/0314.quick_charge_mp/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0314.quick_charge_mp/_/tick

#> Private
# @private
    #declare score_holder $Interval

# 4tickに1回MPを1%回復する
    execute store result score $Interval Temporary run data get storage asset:context Duration
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 run function api:mp/get_max
    execute if score $Interval Temporary matches 0 store result storage api: Argument.Fluctuation double 0.01 run data get storage api: Return.MaxMP
    execute if score $Interval Temporary matches 0 run function api:mp/fluctuation
    scoreboard players reset $Interval
