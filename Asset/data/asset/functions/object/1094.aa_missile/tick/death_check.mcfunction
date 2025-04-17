#> asset:object/1094.aa_missile/tick/death_check
#
# 
#
# @within function asset:object/1094.aa_missile/tick/

# 対象不在ならkill
    $execute unless entity @e[type=#lib:living,scores={MobUUID=$(TargetID)},distance=..128] run kill @s
