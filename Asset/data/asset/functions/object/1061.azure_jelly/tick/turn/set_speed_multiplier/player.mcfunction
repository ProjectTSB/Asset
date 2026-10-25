#> asset:object/1061.azure_jelly/tick/turn/set_speed_multiplier/player
#
#
#
# @within function
#   asset:object/1061.azure_jelly/tick/turn/chase_player/
#   asset:object/1061.azure_jelly/tick/turn/random_rotate

    execute if entity @p[tag=1061.Owner,distance=..40] run data modify storage asset:context this.SpeedMultiplier set value 3
    execute if entity @p[tag=1061.Owner,distance=..20] run data modify storage asset:context this.SpeedMultiplier set value 2
    execute if entity @p[tag=1061.Owner,distance=..10] run data modify storage asset:context this.SpeedMultiplier set value 1
