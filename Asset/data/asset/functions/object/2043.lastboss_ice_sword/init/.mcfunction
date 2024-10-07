#> asset:object/2043.lastboss_ice_sword/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2043/init

# プレイヤーのほう向く
    execute facing entity @p[distance=..64] feet run tp @s ~ ~ ~ ~ 0

# 座標をalign
    execute align xyz run tp @s ~0.5 ~ ~0.5

# 演出
    particle explosion ~ ~1 ~ 0 0 0 0 1
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 10
    playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.zombie_villager.converted neutral @a ~ ~ ~ 1 2
    playsound minecraft:block.beacon.ambient neutral @a ~ ~ ~ 1 2

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
