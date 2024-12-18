#> asset:mob/0106.mini_shulker/tick/shell/open
# @within function asset:mob/0106.mini_shulker/**

data modify storage asset:context this.State set value "open"
execute on passengers run data modify entity @s item.tag.CustomModelData set value 20458
