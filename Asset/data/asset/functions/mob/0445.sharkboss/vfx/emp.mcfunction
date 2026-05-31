#> asset:mob/0445.sharkboss/vfx/emp
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/emp

# emp召喚
    data modify storage api: Argument.ID set value 2289
    #execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    #data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.WaterGun
    function api:object/summon
