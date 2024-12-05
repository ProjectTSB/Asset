#> asset:mob/0190.thunder_mage/tick/summon
#
#
#
# @within function
#   asset:mob/0190.thunder_mage/tick/attack
#   asset:mob/0190.thunder_mage/tick/predict.m

# 召喚
    data modify storage api: Argument.ID set value 2075
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
