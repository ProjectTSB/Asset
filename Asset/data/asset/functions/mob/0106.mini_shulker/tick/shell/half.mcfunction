#> asset:mob/0106.mini_shulker/tick/shell/half
# @within function asset:mob/0106.mini_shulker/**

effect clear @s resistance
execute on passengers run data modify entity @s item.tag.CustomModelData set from storage asset:context this.Model.Half
