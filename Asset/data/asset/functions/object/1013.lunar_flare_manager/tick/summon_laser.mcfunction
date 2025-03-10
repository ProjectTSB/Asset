#> asset:object/1013.lunar_flare_manager/tick/summon_laser
#
#
#
# @within function asset:object/1013.lunar_flare_manager/tick/

#> SpreadLib
# @private
    #declare tag SpreadMarker

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 5.0
    data modify storage lib: Argument.Spread set value 3
    execute as @e[type=marker,tag=SpreadMarker] run function lib:forward_spreader/circle

# ビーム召喚
    data modify storage api: Argument.ID set value 1014
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ^ ^ ^-17.2 run function api:object/summon

# 前方拡散を消す
    kill @e[type=marker,tag=SpreadMarker]
