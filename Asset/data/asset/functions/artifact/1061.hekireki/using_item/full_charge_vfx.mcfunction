#> asset:artifact/1061.hekireki/using_item/full_charge_vfx
#
#
#
# @within function asset:artifact/1061.hekireki/using_item/extra_charge

#> Private
# @private
    #declare score_holder $Interval

# 一定間隔で演出
    scoreboard players operation $Interval Temporary = @s TH.Charge
    scoreboard players operation $Interval Temporary %= $6 Const
    execute if score $Interval Temporary matches 0 anchored eyes positioned ^ ^ ^1 run function asset:artifact/1061.hekireki/using_item/vfx/full_charge/1
    execute if score $Interval Temporary matches 2 anchored eyes positioned ^ ^ ^1 run function asset:artifact/1061.hekireki/using_item/vfx/full_charge/2
    execute if score $Interval Temporary matches 4 anchored eyes positioned ^ ^ ^1 run function asset:artifact/1061.hekireki/using_item/vfx/full_charge/3

# リセット
    scoreboard players reset $Interval Temporary
