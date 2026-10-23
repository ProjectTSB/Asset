#> asset:effect/0404.blaze_barrage/tick/summon_object
#
#
#
# @within function asset:effect/0404.blaze_barrage/tick/spread

# 演出
    #playsound entity.arrow.shoot player @a ~ ~ ~ 0.6 1.2
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 1.2
    playsound entity.wither.shoot player @a ~ ~ ~ 0.1 1.7
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 0.5 2 0

# 召喚
    data modify storage api: Argument.ID set value 1198
    data modify storage api: Argument.FieldOverride.Range set from storage asset:context this.Range
    data modify storage api: Argument.FieldOverride.Speed set from storage asset:context this.Speed
    execute store result storage api: Argument.FieldOverride.Damage double 0.1 run function asset:effect/0404.blaze_barrage/tick/damage_range.m with storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
