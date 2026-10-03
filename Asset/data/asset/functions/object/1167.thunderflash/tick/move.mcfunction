#> asset:object/1167.thunderflash/tick/move
#
#
#
# @within function asset:object/1167.thunderflash/tick/

#> Private
# @private
    #declare score_holder $Interval

# 進む
    tp @s ^ ^ ^0.5

# (Range - 1)
    execute store result storage asset:context this.Range int 0.9999999999 run data get storage asset:context this.Range

# 2tickに一度攻撃
    execute store result score $Interval Temporary run data get storage asset:context this.Range
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 at @s run function asset:object/1167.thunderflash/tick/attack/
    scoreboard players reset $Interval Temporary

# Rangeが0ならkill
    execute if data storage asset:context this{Range:0} run kill @s
