#> asset:effect/0341.dolphin_dive/tick/landing
#
#
#
# @within function asset:effect/0341.dolphin_dive/tick/

# Durationを0にしてエフェクト解除
    data modify storage asset:context Duration set value 0

# Object召喚
    data modify storage api: Argument.ID set value 1151
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
