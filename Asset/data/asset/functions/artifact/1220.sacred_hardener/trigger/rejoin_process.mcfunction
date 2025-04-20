#> asset:artifact/1220.sacred_hardener/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

execute if entity @a[scores={XW.ErrorCooldown=1..},limit=1] run schedule function asset:artifact/1220.sacred_hardener/trigger/schedule_loop 1t replace
