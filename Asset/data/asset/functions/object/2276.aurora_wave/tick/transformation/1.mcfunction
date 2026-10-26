#> asset:object/2276.aurora_wave/tick/transformation/1
#
#
#
# @within function asset:object/2276.aurora_wave/tick/

# start_interpolation
    data modify entity @s start_interpolation set value 0

# interpolation_duration
    data modify entity @s interpolation_duration set value 3

# transformation
    data modify entity @s transformation.scale set from storage asset:context this.PreScale[1]
    data modify entity @s transformation.translation set from storage asset:context this.PreTranslation[1]
