#> asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb/with_spread
#
# ブレつきで投げる
#
# @within function asset:artifact/1206.triple_sparkle_bomb/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker

# Motionをランダムにする
    execute store result storage api: Argument.FieldOverride.Motion float 0.01 run random value 90..120

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 1.8
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# SpreadMarkerを見て召喚
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] eyes run function asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb/

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
