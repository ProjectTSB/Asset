#> asset:object/1065.hex_sting/kill/deal_damage.m
#
#
#
# @input args
#   RangeMax: double
#   RangeMaxD: double
#   RangeMinSubCommand: string
#   DamagePer: int
# @within function asset:object/1065.hex_sting/kill/

$execute store result storage api: Argument.Damage double 0.01 run data get storage asset:context this.Damage $(DamagePer)

data modify storage api: Argument.AttackType set value "Physical"
data modify storage api: Argument.ElementType set value "Fire"
execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
$execute positioned ~-$(RangeMax) ~-$(RangeMax) ~-$(RangeMax) as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=$(RangeMaxD),dy=$(RangeMaxD),dz=$(RangeMaxD)] positioned ~$(RangeMax) ~$(RangeMax) ~$(RangeMax) $(RangeMinSubCommand)run function api:damage/
function api:damage/reset
