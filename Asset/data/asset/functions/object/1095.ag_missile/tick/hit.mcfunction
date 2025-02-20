#> asset:object/1095.ag_missile/tick/hit
#
# 
#
# @within function asset:object/1095.ag_missile/tick/

# 命中していたらダメージを与えてkill
    $execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[scores={MobUUID=$(TargetID)},dx=0] run function asset:object/1095.ag_missile/tick/damage with storage asset:context this
    $execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[scores={MobUUID=$(TargetID)},dx=0] run kill @s
