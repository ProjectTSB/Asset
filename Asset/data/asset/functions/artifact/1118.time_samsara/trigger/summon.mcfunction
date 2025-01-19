#> asset:artifact/1118.time_samsara/trigger/summon
#
#
#
# @within function asset:artifact/1118.time_samsara/trigger/3.main

# 拡散用marker召喚
    execute as @e[type=#lib:living,distance=..30,sort=nearest,limit=1] anchored eyes run summon marker ^ ^ ^ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[3d,3d],[1d,1d],[3d,3d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..30] at @s run function lib:spread_entity/
# 拡散用マーカーが敵を見る
    execute as @e[type=marker,tag=SpreadMarker,distance=..30] at @s run tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30,sort=nearest,limit=1] eyes

# 召喚
    data modify storage api: Argument.ID set value 1051
    execute as @e[type=marker,tag=SpreadMarker,distance=..30,limit=1] at @s run data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute at @e[type=marker,tag=SpreadMarker,distance=..30] facing entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30,sort=nearest,limit=1] eyes positioned ^ ^ ^-3 run function api:object/summon

# 前方拡散をキル
    kill @e[type=marker,tag=SpreadMarker,distance=..30]
