#> asset:artifact/1065.magic_bullet/trigger/5.init_square
#
#
#
# @within function asset:artifact/1065.magic_bullet/trigger/3.main

# Tagを付与
    tag @s add TL.Bullet

# 視点を使用者に合わせる
    data modify entity @s Rotation set from entity @p[tag=this] Rotation

# displayの設定
    data modify entity @s item set value {id:stick,Count:1b,tag:{CustomModelData:20351}}
# {item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20351}}}
