#> asset:artifact/1200.alchemy_hammer/trigger/summon_laser
#
# 光の柱を召喚
#
# @within function asset:artifact/1200.alchemy_hammer/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..6] run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..10] at @s run function lib:spread_entity/

# 光の柱を召喚
    data modify storage api: Argument.ID set value 1098
    execute store result storage api: Argument.FieldOverride.Damage float 0.5 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute at @e[type=marker,tag=SpreadMarker,distance=..10] run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
