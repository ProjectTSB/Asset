#> asset:object/2181.behemoth_line/tick/show_line
#
# Objectのtick時の処理
#
# @within asset:object/2181.behemoth_line/tick/

# 表示
    data modify entity @s item set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20493}}
    execute if data storage asset:context this.OverrideCmd run data modify entity @s item.tag.CustomModelData set from storage asset:context this.OverrideCmd
