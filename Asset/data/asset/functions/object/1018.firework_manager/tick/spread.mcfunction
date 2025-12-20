#> asset:object/1018.firework_manager/tick/spread
#
#
#
# @within function asset:object/1018.firework_manager/tick/

#> Private
# @private
    #declare tag SpreadMarker

# マーカーを拡散させ、その位置で花火召喚処理を実行する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[25d,25d],[0d,0d],[25d,25d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] at @s run function lib:spread_entity/
    execute at @e[type=marker,tag=SpreadMarker,distance=..50,sort=nearest,limit=1] positioned ~ ~1 ~ run function asset:object/1018.firework_manager/tick/summon/

# リセット
    data remove storage lib: Argument
    kill @e[type=marker,tag=SpreadMarker,distance=..50,limit=1]
