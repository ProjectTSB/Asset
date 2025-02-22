#> asset:object/1094.aa_missile/tick/inertia_motion
#
# 
#
# @within function asset:object/1094.aa_missile/tick/

# 移動
    $execute facing entity @e[type=#lib:living,scores={MobUUID=$(TargetID)},distance=..128] eyes run tp @s ^ ^ ^0.9 ~ ~
        #$say execute facing entity e[scores={MobUUID=$(TargetID)] eyes run tp @s ^ ^ ^0.5 ~ ~
