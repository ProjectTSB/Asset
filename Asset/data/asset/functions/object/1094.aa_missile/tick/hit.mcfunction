#> asset:object/1094.aa_missile/tick/hit
#
# 
#
# @within function asset:object/1094.aa_missile/tick/

# 命中していたらダメージを与えてkill
    $execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,scores={MobUUID=$(TargetID)},dx=0] at @s run function asset:object/1094.aa_missile/tick/damage with storage asset:context this
    $execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,scores={MobUUID=$(TargetID)},dx=0] run kill @s
        #$say $execute at @ positioned ~-0.5 ~-0.5 ~-0.5 if entity @[scores={MobUUID=$(TargetID)},dx=0] run function asset:object/1094.aa_missile/tick/damage
        #$say $execute at @ execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @[scores={MobUUID=$(TargetID)},dx=0] run kill @s
