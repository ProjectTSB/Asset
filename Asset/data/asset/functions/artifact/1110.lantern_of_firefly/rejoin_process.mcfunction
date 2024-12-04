#> asset:artifact/1110.lantern_of_firefly/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# schedule再開
    execute if entity @p[scores={UU.Tick=0..}] run schedule function asset:artifact/1110.lantern_of_firefly/attack/schedule/loop 1t replace
