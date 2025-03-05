#> asset:object/1095.ag_missile/tick/accel_motion3
#
# 
#
# @within function asset:object/1095.ag_missile/tick/

# 移動
    $execute facing entity @e[type=#lib:living,scores={MobUUID=$(TargetID)},distance=..128] eyes run tp @s ^ ^ ^0.7 ~ ~

# particle
    particle minecraft:cloud ^ ^ ^-1 0.1 0.1 0.1 0.03 1
    particle minecraft:flame ^ ^ ^-1 0.1 0.1 0.1 0.001 1
