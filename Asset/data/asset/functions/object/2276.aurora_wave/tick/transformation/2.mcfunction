#> asset:object/2276.aurora_wave/tick/transformation/2
#
#
#
# @within function asset:object/2276.aurora_wave/tick/

# start_interpolation
    data modify entity @s start_interpolation set value 0

# interpolation_duration
    data modify entity @s interpolation_duration set value 13

# transformation
    data modify entity @s transformation.scale set from storage asset:context this.PreScale[2]
    data modify entity @s transformation.translation set from storage asset:context this.PreTranslation[2]
