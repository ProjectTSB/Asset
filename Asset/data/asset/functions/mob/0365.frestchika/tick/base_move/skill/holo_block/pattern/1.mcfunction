#> asset:mob/0365.frestchika/tick/base_move/skill/holo_block/pattern/1
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/holo_block/

#> SpreadLib
# @private
#declare tag SpreadMarker

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..32,limit=1] run function lib:spread_entity/

# マーカーの位置にオブジェクト召喚
    execute at @e[type=marker,tag=SpreadMarker,distance=..32,limit=1] align xyz positioned ~0.5 ~ ~0.5 run function asset:mob/0365.frestchika/tick/base_move/skill/holo_block/block/summon_3

# マーカーキル
    kill @e[type=marker,tag=SpreadMarker,limit=1]
