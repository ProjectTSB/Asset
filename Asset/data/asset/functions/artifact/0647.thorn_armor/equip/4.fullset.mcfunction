#> asset:artifact/0647.thorn_armor/equip/4.fullset
#
# フルセット時発動の処理
#
# @within function
#   asset:artifact/0646.thorn_helm/equip/
#   asset:artifact/0647.thorn_armor/equip/
#   asset:artifact/0648.thorn_leggings/equip/
#   asset:artifact/0649.thorn_boots/equip/

# 演出
    particle dust 0 0.2 0 1.5 ~ ~0.05 ~ 3 0 3 0 250 normal @a
    particle dust 0 0.2 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a

# タグを付与
    tag @s add HZ.FullSet

# 演出
    particle dust 0 0.2 0 1 ~ ~1.2 ~ 0.4 0.5 0.6 0 80 normal @a
    playsound block.sweet_berry_bush.place player @a ~ ~ ~ 1 0 0

# ループスタート
    schedule function asset:artifact/0647.thorn_armor/equip/9.loop 1t replace