#> asset:object/1132.red_knight_zenith_slash/kill/
#
#
#
# @within function asset:object/alias/1132/kill

# パーティクル
    particle dust 0.6 0 0 1 ~ ~ ~ 0.3 0.3 0.3 1 5
    particle block red_stained_glass ~ ~ ~ 0.2 0.2 0.2 1 10

# サウンド
    playsound minecraft:item.trident.hit_ground neutral @a ~ ~ ~ 1 1
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 0.7

# 消失
    kill @s
