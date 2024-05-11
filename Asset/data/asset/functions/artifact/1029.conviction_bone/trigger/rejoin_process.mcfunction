#> asset:artifact/1029.conviction_bone/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# 再帰処理
    execute if entity @e[type=cod,tag=SL.Fish,limit=1] run schedule function asset:artifact/1029.conviction_bone/trigger/3.1.tick 1t replace
