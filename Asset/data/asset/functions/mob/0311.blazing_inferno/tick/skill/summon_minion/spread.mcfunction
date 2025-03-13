#> asset:mob/0311.blazing_inferno/tick/skill/summon_minion/spread
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/active

#> SpreadLib
# @private
    #declare tag SpreadMarker

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[15d,15d],[0d,0d],[15d,15d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..64,limit=1] at @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..64,limit=1] run function lib:spread_entity/

# マーカーに対して召喚
    execute at @e[type=marker,tag=SpreadMarker,distance=..64,limit=1] positioned ~ ~2 ~ run function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/summon

# マーカーキル
    kill @e[type=marker,tag=SpreadMarker]
