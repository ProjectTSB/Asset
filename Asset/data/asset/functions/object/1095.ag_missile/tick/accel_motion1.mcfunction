#> asset:object/1095.ag_missile/tick/accel_motion1
#
# 
#
# @within function asset:object/1095.ag_missile/tick/

# 移動
    execute rotated ~ 0 run tp @s ^ ^ ^0.7 ~ -20
        #$say execute facing entity @[scores={MobUUID=$(TargetID)}] eyes run tp @s ^ ^ ^0.5 ~ ~

# particle
    particle minecraft:cloud ^ ^ ^-1 0.1 0.1 0.1 0.03 1
    particle minecraft:flame ^ ^ ^-1 0.1 0.1 0.1 0.001 1
