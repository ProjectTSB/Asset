#> asset:object/2043.lastboss_ice_sword/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2043/hit_block

# 移動キャンセル
    data remove storage asset:context this

# 位置調整
    tp @s ~ ~1 ~ ~ ~

# 一瞬でプレイヤーのほうを向く
#    data modify entity @s teleport_duration set value 0


# タグ付与
    tag @s add 2043.Landed

# 演出
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 2 1
    playsound minecraft:item.trident.return neutral @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.iron_golem.hurt neutral @a ~ ~ ~ 2 2
    particle dust 0.667 1 0.976 1 ~ ~0.8 ~ 0.1 0.1 0.1 0 50
    particle end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
