#> asset:artifact/1230.thunder_stiletto/trigger/throw_knife.m
#
# @input args:
#   Damage : float
#   MP: int @ 0..100
# @within function asset:artifact/1230.thunder_stiletto/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 3.0
    data modify storage lib: Argument.Spread set value 0.2
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# 弾を召喚
    data modify storage api: Argument.ID set value 1130
    $data modify storage api: Argument.FieldOverride.Damage set value $(Damage)
    $execute store result storage api: Argument.FieldOverride.AdditionalMPHeal double 0.01 run data get storage api: PersistentArgument.AdditionalMPHeal $(MP)
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
