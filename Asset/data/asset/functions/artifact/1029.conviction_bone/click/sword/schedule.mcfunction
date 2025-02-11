#> asset:artifact/1029.conviction_bone/click/sword/schedule
#
#
#
# @within function
#    asset:artifact/1029.conviction_bone/click/
#    asset:artifact/1029.conviction_bone/click/sword/schedule
#    asset:artifact/1029.conviction_bone/click/check

# 実行
    execute as @e[type=item_display,tag=SL.Sword] at @s run function asset:artifact/1029.conviction_bone/click/sword/sword

# 再帰処理
    execute if entity @e[type=item_display,tag=SL.Sword,limit=1] run schedule function asset:artifact/1029.conviction_bone/click/sword/schedule 1t replace
