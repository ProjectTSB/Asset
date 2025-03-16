#> asset:artifact/1206.triple_sparkle_bomb/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループ再開　
    execute if entity @a[scores={XI.Tick=0..}] run schedule function asset:artifact/1206.triple_sparkle_bomb/trigger/loop/ 1t replace
