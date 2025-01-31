#> asset:mob/0217.medousa_eye/tick/announce/
#
#
#
# @within function asset:mob/0217.medousa_eye/tick/

#> Private
# @private
    #declare score_holder $Interval

# 2tick毎に予告用再帰
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 positioned ^ ^1.7 ^ run function asset:mob/0217.medousa_eye/tick/announce/recursive
    scoreboard players reset $Interval Temporary

# リセット
    tag @s remove Landing
