#> asset:artifact/1638.tome_of_median/trigger/calc
#
#
#
# @within function asset:artifact/1638.tome_of_median/trigger/3.main

#> Private
# @private
    #declare score_holder $A1638.50
    #declare score_holder $3
    #declare score_holder $-3
    #declare score_holder $A1638.500

# 50 - MPRatio
    scoreboard players set $A1638.50 Temporary 50
    scoreboard players operation $A1638.50 Temporary -= $A1638.MPRatio Temporary

# abs(50 - MPRatio) / 3
    execute if score $A1638.50 Temporary matches 1.. run scoreboard players operation $A1638.50 Temporary /= $3 Const
    execute if score $A1638.50 Temporary matches ..-1 run scoreboard players operation $A1638.50 Temporary /= $-3 Const

# 500を割る
    scoreboard players set $A1638.500 Temporary 500
    execute store result score $A1638.Damage Temporary run scoreboard players operation $A1638.500 Temporary /= $A1638.50 Temporary

# リセット
    scoreboard players reset $A1638.50
    scoreboard players reset $A1638.500
