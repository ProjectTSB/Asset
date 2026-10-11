#> asset:artifact/1638.tome_of_median/trigger/calc
#
#
#
# @within function asset:artifact/1638.tome_of_median/trigger/3.main

#> Private
# @private
    #declare score_holder $50
    #declare score_holder $3
    #declare score_holder $-3
    #declare score_holder $500

# 50 - MPRatio
    scoreboard players set $50 Temporary 50
    scoreboard players operation $50 Temporary -= $MPRatio Temporary

# abs(50 - MPRatio) / 3
    execute if score $50 Temporary matches 1.. run scoreboard players operation $50 Temporary /= $3 Const
    execute if score $50 Temporary matches ..-1 run scoreboard players operation $50 Temporary /= $-3 Const

# 500を割る
    scoreboard players set $500 Temporary 500
    execute store result score $Damage Temporary run scoreboard players operation $500 Temporary /= $50 Temporary

# リセット
    scoreboard players reset $50 Temporary
    scoreboard players reset $500 Temporary
