#> asset:artifact/1657.phoenix_shield/trigger/vfx/
#
# 火種取得音
#
# @within function asset:artifact/1657.phoenix_shield/trigger/3.main

# 音とパーティクル
    playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.6 1.5
    playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 1.2
    particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.02 15
    particle minecraft:lava ~ ~1 ~ 0.3 0.3 0.3 0 3
