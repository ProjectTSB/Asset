#> asset:object/1076.airlift/tick/supply
#
# 
#
# @within function asset:object/1076.airlift/tick/

# 回復
    execute as @a[distance=..15] run function asset:object/1076.airlift/tick/heal with storage asset:context this

# 補給
    function asset:object/1076.airlift/tick/give_load with storage asset:context this

# vfx
    execute positioned ~ ~0.5 ~ run function asset:object/1076.airlift/tick/vfx
