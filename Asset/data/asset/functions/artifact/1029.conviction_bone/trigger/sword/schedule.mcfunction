#> asset:artifact/1029.conviction_bone/trigger/sword/schedule
#
#
#
# @within function
#    asset:artifact/1029.conviction_bone/trigger/3.main
#    asset:artifact/1029.conviction_bone/trigger/sword/schedule
#    asset:artifact/1029.conviction_bone/trigger/2.check_condition

# 実行
    execute as @e[type=item_display,tag=SL.Sword] at @s run function asset:artifact/1029.conviction_bone/trigger/sword/sword

# 再帰処理
    execute if entity @e[type=item_display,tag=SL.Sword,limit=1] run schedule function asset:artifact/1029.conviction_bone/trigger/sword/schedule 1t replace
