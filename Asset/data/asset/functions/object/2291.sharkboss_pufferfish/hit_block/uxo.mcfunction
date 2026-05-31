#> asset:object/2291.sharkboss_pufferfish/hit_block/uxo
#
# 
#
# @within function asset:object/2291.sharkboss_pufferfish/hit_block/

#不発弾の場合
    tag @s add 2291.OnGround
    playsound entity.chicken.egg hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.hoglin.hurt hostile @a ~ ~ ~ 1 2
    tp @s ~ ~0.65 ~ ~ -20
