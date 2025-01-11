#> asset:object/1052.maid/tick/kill
#
#
#
# @within function asset:object/1052.maid/tick/

# 演出
    playsound minecraft:entity.allay.death neutral @a ~ ~ ~ 1 2
    particle minecraft:enchant ~ ~1 ~ 0.2 0.5 0.2 0 100

# TPして死ぬ
    tp ~ -9999 ~
    kill @s
