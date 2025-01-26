#> asset:object/2180.tiamat_pillar/tick/hit_thunder_1
#
# Objectのtick時の処理
#
# @within asset:object/2180.tiamat_pillar/tick/hit_thunder

# タグ付与
    tag @s remove 2180.Pillar.Thunder
    tag @s add 2180.Pillar.Thunder.2

# 見た目変更
    data modify entity @s item.tag.CustomModelData set value 20496

# 演出
    playsound item.trident.thunder hostile @a ~ ~ ~ 0.5 2
