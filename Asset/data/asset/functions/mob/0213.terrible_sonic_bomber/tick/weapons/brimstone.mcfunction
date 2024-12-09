#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/use_weapon

# オブジェクト召喚
data modify storage api: Argument.ID set value 2083
execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
function api:object/summon
