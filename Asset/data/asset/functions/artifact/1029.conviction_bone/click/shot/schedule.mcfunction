#> asset:artifact/1029.conviction_bone/click/shot/schedule
#
#
#
# @within function
#    asset:artifact/1029.conviction_bone/click/shot/summon
#    asset:artifact/1029.conviction_bone/click/shot/schedule
#    asset:artifact/1029.conviction_bone/click/check

# 実行
    execute as @e[type=marker,tag=SL.Shot] at @s run function asset:artifact/1029.conviction_bone/click/shot/shot

# 再帰処理
    execute if entity @e[type=marker,tag=SL.Shot,limit=1] run schedule function asset:artifact/1029.conviction_bone/click/shot/schedule 1t replace
