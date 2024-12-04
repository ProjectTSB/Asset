#> asset:artifact/0191.horus_wand/click/vfx/
#
#
#
# @within function asset:artifact/0191.horus_wand/click/

#> Val
# @private
    #declare tag Init

# VFX用Entityの初期化
    summon marker ~ ~ ~ {Tags:["5B.VFX","Init","Object","Uninterferable"]}
# 初回tickの処理
    execute as @e[type=marker,tag=Init,distance=..0.01] run function asset:artifact/0191.horus_wand/click/vfx/main
# 次tick以降用にschedule予約
    schedule function asset:artifact/0191.horus_wand/click/vfx/task 1t
# リセット
    tag @e[type=marker,tag=Init,distance=..0.01] remove Init
