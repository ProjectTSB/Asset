#> asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/2.spread
#
# 設置用マーカーを拡散してその座標に召喚
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/1

# 設置位置となるMarkerを召喚
    summon marker ~ ~ ~ {Tags:["26.SkillThunderMarker"]}
    data modify storage lib: Argument.Bounds set value [[12d,12d],[0d,0d],[12d,12d]]
    execute as @e[type=marker,tag=26.SkillThunderMarker,distance=..0.01,limit=1] run function lib:spread_entity/

# 召喚
    data modify storage api: Argument.ID set value 86
    execute at @e[type=marker,tag=26.SkillThunderMarker,distance=..16,limit=1] run function api:mob/summon

# リセット
    data remove storage lib: Argument
    kill @e[type=marker,tag=26.SkillThunderMarker,distance=..16]
