#> asset:artifact/1651.rune_blaster/keep_using_item/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> objectAsset側でも使うobjective
# @within function
#   asset:artifact/1651.rune_blaster/**
#   asset:object/1200.rune_blaster_circle/init/
#   asset:object/1200.rune_blaster_circle/tick/
    scoreboard objectives add 19V.UserID dummy

#> この神器内のみのobjective
# @within function asset:artifact/1651.rune_blaster/**
    scoreboard objectives add 19V.LatestUseTick dummy
