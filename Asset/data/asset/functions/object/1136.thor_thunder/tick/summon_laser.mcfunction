#> asset:object/1136.thor_thunder/tick/summon_laser
#
#
#
# @within function asset:object/1136.thor_thunder/tick/damage

# レーザー用Objを召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[1f,15f,1f],Color:16775792,DisappearTick:5,AppearInterpolation:2,DisappearInterpolation:5,LifeTime:12}
    execute rotated ~ -90 run function api:object/summon
