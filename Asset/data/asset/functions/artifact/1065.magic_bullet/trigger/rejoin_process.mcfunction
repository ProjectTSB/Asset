#> asset:artifact/1065.magic_bullet/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループ再開
    execute if entity @e[type=!#lib:living,tag=TL.LoopTarget,limit=1] run schedule function asset:artifact/1065.magic_bullet/trigger/loop/ 1t replace
