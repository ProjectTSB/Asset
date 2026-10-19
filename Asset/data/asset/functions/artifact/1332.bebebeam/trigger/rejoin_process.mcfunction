#> asset:artifact/1332.bebebeam/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループ再開
    execute if entity @a[scores={110.Count=1..}] run schedule function asset:artifact/1332.bebebeam/trigger/loop/ 1t replace
