#> asset:artifact/1029.conviction_bone/trigger/shot/schedule
#
#
#
# @within function
#    asset:artifact/1029.conviction_bone/trigger/shot/summon
#    asset:artifact/1029.conviction_bone/trigger/shot/schedule
#    asset:artifact/1029.conviction_bone/trigger/2.check_condition

# 実行
    execute as @e[type=marker,tag=SL.Shot] at @s run function asset:artifact/1029.conviction_bone/trigger/shot/shot

# 再帰処理
    execute if entity @e[type=marker,tag=SL.Shot,limit=1] run schedule function asset:artifact/1029.conviction_bone/trigger/shot/schedule 1t replace
