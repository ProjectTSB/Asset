#> asset:artifact/0976.brave_sword/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループ
    execute if entity @p[scores={R4.Wait=0..}] run schedule function asset:artifact/0976.brave_sword/trigger/combo/1.tick 1t
