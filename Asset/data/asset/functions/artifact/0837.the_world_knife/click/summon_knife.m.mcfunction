#> asset:artifact/0837.the_world_knife/click/summon_knife.m
#
#
# @input args
#   Spread: double
#   TheWorld: boolean
#   DamageMin: int
#   DamageMax: int
# @within function asset:artifact/0837.the_world_knife/click/**

#> private
# @private
    #declare tag SpreadMarkerB

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarkerB"]}
    data modify storage lib: Argument.Distance set value 1
    $data modify storage lib: Argument.Spread set value $(Spread)
    execute as @e[type=marker,tag=SpreadMarkerB,distance=..10,limit=1] run function lib:forward_spreader/circle

# 召喚
    data modify storage api: Argument.ID set value 1066
    $execute store result storage api: Argument.FieldOverride.Damage double 0.1 run random value $(DamageMin)0..$(DamageMax)0
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @p[tag=this] UserID
    $data modify storage api: Argument.FieldOverride.TheWorld set value $(TheWorld)
    execute facing entity @e[type=marker,tag=SpreadMarkerB,distance=..10,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarkerB,distance=..10]
