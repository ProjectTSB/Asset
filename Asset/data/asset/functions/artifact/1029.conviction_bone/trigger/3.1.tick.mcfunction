#> asset:artifact/1029.conviction_bone/trigger/3.1.tick
#
#
#
# @within function
#    asset:artifact/1029.conviction_bone/trigger/3.main
#    asset:artifact/1029.conviction_bone/trigger/3.1.tick
#    asset:artifact/1029.conviction_bone/trigger/rejoin_process


# 実行
    execute as @e[type=item_display,tag=SL.Fish] at @s run function asset:artifact/1029.conviction_bone/trigger/3.2.sword

# 再帰処理
    execute if entity @e[type=item_display,tag=SL.Fish,limit=1] run schedule function asset:artifact/1029.conviction_bone/trigger/3.1.tick 1t replace
