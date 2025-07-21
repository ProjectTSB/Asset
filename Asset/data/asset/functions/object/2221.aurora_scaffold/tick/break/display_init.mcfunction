#> asset:object/2221.aurora_scaffold/tick/break/display_init
#
#
#
# @within function asset:object/2221.aurora_scaffold/tick/break/set_display

# 見た目設定
    data modify entity @s item set value {id:"stick",Count:1b,tag:{CustomModelData:20175}}

# Tagを付与
    tag @s add 2221.ItemDisplay

# IDを付与
    execute store result score @s 2221.ID run data get storage asset:context this.ID
