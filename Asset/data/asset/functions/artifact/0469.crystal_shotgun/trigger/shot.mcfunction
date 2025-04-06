#> asset:artifact/0469.crystal_shotgun/trigger/shot
#
#
#
# @within function asset:artifact/0469.crystal_shotgun/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散設定
    execute anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 2
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 召喚
    data modify storage api: Argument.ID set value 1107
    data modify storage api: Argument.FieldOverride.Damage set value 18
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute anchored eyes positioned ^-0.35 ^-0.15 ^0.5 facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
