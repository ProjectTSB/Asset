#> asset:artifact/1047.life_steal_emblem/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# スケジュール再度セット
    execute if entity @a[scores={T3.BuffTick=1..}] run schedule function asset:artifact/1047.life_steal_emblem/trigger/schedule 1t