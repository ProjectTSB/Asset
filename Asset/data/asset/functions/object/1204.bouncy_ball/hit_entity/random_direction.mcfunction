#> asset:object/1204.bouncy_ball/hit_entity/random_direction
#
# 
#
# @within function asset:object/1204.bouncy_ball/hit_entity/

#> SpreadLib
    # @private
    #declare tag SpreadMarker

    # 拡散させるEntityを召喚する
        summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    # 拡散
        data modify storage lib: Argument.Bounds set value [[1d,1d],[0.4d,0.4d],[1d,1d]]
        execute as @e[type=marker,tag=SpreadMarker,distance=..3,limit=1] at @s run function lib:spread_entity/
    # 拡散させたEntityの位置に向く
        tp @s ^ ^ ^ facing entity @e[type=marker,tag=SpreadMarker,distance=..3,limit=1] feet
    # リセット
        kill @e[type=marker,tag=SpreadMarker,distance=..3]
