#> asset:object/1106.mini_black_hole/tick/explode/damage/do.m
#
#
#
# @input args Range : double
# @within asset:object/1106.mini_black_hole/tick/explode/damage/

data modify storage api: Argument.Damage set value 180
data modify storage api: Argument.AttackType set value "Magic"
data modify storage api: Argument.BypassModifier set value true
execute as @a[tag=UQ.Owner,limit=1] run function api:damage/modifier
$execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..$(Range)] run function api:damage/
function api:damage/reset
