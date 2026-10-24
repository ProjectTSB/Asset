#> asset:artifact/1648.cursed_power_stone/dis_equip/2.check_condition
#
#
#
# @within function asset:artifact/1648.cursed_power_stone/dis_equip/1.trigger

#> private
# @private
    #declare score_holder $Count

# まだホットバーに同神器があるならキャンセル
    execute store result score $Count Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1648}}}]
    execute if score $Count Temporary matches 0 run function asset:artifact/1648.cursed_power_stone/dis_equip/3.main

# リセット
    scoreboard players reset $Count Temporary
