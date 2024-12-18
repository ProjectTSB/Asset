#> asset:mob/0106.mini_shulker/tick/shell/close
# @within function asset:mob/0106.mini_shulker/**

data modify storage asset:context this.State set value "close"
execute on passengers run data modify entity @s item.tag.CustomModelData set value 20456
