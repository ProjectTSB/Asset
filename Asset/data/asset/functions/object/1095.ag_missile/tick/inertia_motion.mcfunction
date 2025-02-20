#> asset:object/1095.ag_missile/tick/inertia_motion
#
# 
#
# @within function asset:object/1095.ag_missile/tick/

# 移動
    $execute facing entity @e[scores={MobUUID=$(TargetID)}] eyes run tp @s ^ ^ ^0.7 ~ ~
