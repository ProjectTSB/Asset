#> asset:object/1095.ag_missile/tick/death_check
#
# 
#
# @within function asset:object/1095.ag_missile/tick/

# 対象不在ならkill
    $execute unless entity @e[type=#lib:living,scores={MobUUID=$(TargetID)},distance=..128,limit=1] run kill @s
