#> asset:object/1112.school_of_fish/tick/spread_summon
#
#
#
# @within function asset:object/1112.school_of_fish/tick/

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 3.0
    data modify storage lib: Argument.Spread set value 2.0
    execute as @e[type=marker,tag=SpreadMarker,distance=..5,limit=1] run function lib:forward_spreader/circle

# SpreadMarkerの位置で魚を召喚
    execute positioned as @e[type=marker,tag=SpreadMarker,distance=..5,limit=1] run function asset:object/1112.school_of_fish/tick/summon

# 魚召喚数用フィールドを減らす
    execute store result storage asset:context this.FishCount int 0.999999999 run data get storage asset:context this.FishCount

# 0になったら消滅
    execute if data storage asset:context this{FishCount:0} run kill @s

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..5]
