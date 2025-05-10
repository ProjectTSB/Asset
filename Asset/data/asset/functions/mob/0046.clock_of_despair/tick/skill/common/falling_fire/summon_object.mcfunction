#> asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_object
# @input args
#   InterpolationTime: int
#   VisibleTime: int
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

# Object召喚
    data modify storage api: Argument.ID set value 2252
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.FallingFire
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
