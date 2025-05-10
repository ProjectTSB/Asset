#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

# 召喚
    data modify storage api: Argument.ID set value 2251
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.WallLaserClock
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute rotated ~-90 ~ run function api:object/summon
