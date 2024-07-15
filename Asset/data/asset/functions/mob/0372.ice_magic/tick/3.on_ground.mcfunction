#> asset:mob/0372.ice_magic/tick/3.on_ground
#
# 地面にいるときの処理
#
# @within function asset:mob/0372.ice_magic/tick/1

#> Private
# @private
    #declare score_holder $Interval

    scoreboard players operation $Interval Temporary = @s AC.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 at @s rotated ~ 0 run function asset:mob/0372.ice_magic/tick/4.attack
    scoreboard players reset $Interval Temporary
