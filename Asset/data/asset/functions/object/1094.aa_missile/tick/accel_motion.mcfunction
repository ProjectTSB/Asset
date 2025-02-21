#> asset:object/1094.aa_missile/tick/accel_motion
#
# 
#
# @within function asset:object/1094.aa_missile/tick/

# 移動
    $execute facing entity @e[scores={MobUUID=$(TargetID)}] eyes run tp @s ^ ^ ^0.9 ~ ~
        #$say execute facing entity @[scores={MobUUID=$(TargetID)}] eyes run tp @s ^ ^ ^0.5 ~ ~

# particle
    particle minecraft:cloud ^ ^ ^-1 0.1 0.1 0.1 0.03 1
    particle minecraft:flame ^ ^ ^-1 0.1 0.1 0.1 0.001 1
