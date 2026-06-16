#> asset:mob/0464.drain_plant/tick/move/teleport/try
#
#
#
# @within function
#   asset:mob/0464.drain_plant/tick/move/teleport/
#   asset:mob/0464.drain_plant/tick/move/teleport/try

#> Private
# @private
    #declare tag SpreadMarker

# デクリメント
    execute store result storage asset:temp RecursiveLimit int 0.9999999999 run data get storage asset:temp RecursiveLimit

# マーカーをワープさせて、そこが安全地帯かどうか判定する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] at @s run function lib:spread_entity/
    execute positioned as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] align xz positioned ~0.5 ~ ~0.5 run function asset:mob/0464.drain_plant/tick/move/teleport/check/

# marker削除
    kill @e[type=marker,tag=SpreadMarker,distance=..10]

# 再帰
    execute unless data storage asset:temp {RecursiveLimit:0} unless data storage asset:temp {Sucess:true} run function asset:mob/0464.drain_plant/tick/move/teleport/try
